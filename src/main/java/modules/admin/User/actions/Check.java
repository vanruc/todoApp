package modules.admin.User.actions;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import modules.admin.domain.Contact;
import modules.admin.domain.Contact.ContactType;
import modules.admin.domain.User;
import modules.admin.domain.UserCandidateContact;

import org.skyve.CORE;
import org.skyve.EXT;
import org.skyve.content.ContentManager;
import org.skyve.content.SearchResult;
import org.skyve.content.SearchResults;
import org.skyve.metadata.controller.ServerSideAction;
import org.skyve.metadata.controller.ServerSideActionResult;
import org.skyve.metadata.customer.Customer;
import org.skyve.metadata.model.document.Document;
import org.skyve.metadata.module.Module;
import org.skyve.persistence.DocumentQuery;
import org.skyve.persistence.Persistence;
import org.skyve.web.WebContext;

public class Check implements ServerSideAction<User> {
	/**
	 * For Serialization.
	 */
	private static final long serialVersionUID = -4667349358677521637L;

	@Override
	public ServerSideActionResult<User> execute(User adminUser, WebContext webContext) throws Exception {
		
		adminUser.setContact(null);
		
		Persistence persistence = CORE.getPersistence();
		org.skyve.metadata.user.User user = persistence.getUser();
		Customer customer = user.getCustomer();
		Module module = customer.getModule(UserCandidateContact.MODULE_NAME);
		Document contactDocument = module.getDocument(customer, Contact.DOCUMENT_NAME);

		// contact to match score
		Map<Contact, Integer> distinctContacts = new LinkedHashMap<>();
		
		// Clear out old matches
		List<UserCandidateContact> candidateContacts = adminUser.getCandidateContacts();
		candidateContacts.clear();
		
		// Find anything by email address
		String searchEmail = adminUser.getSearchEmail();
		if (searchEmail != null) {
			searchEmail = searchEmail.replace(' ', '%').replace('@', '%');
			DocumentQuery q = persistence.newDocumentQuery(Contact.MODULE_NAME, Contact.DOCUMENT_NAME);
			q.getFilter().addLike(Contact.email1PropertyName, searchEmail);
			List<Contact> emailMatches = q.beanResults();
			for (Contact emailMatch : emailMatches) {
				distinctContacts.put(emailMatch, Integer.valueOf(1));
			}
		}
		
		String searchName = adminUser.getSearchContactName();
		if (searchName != null) { 
			try (ContentManager cm = EXT.newContentManager()) {
				SearchResults nameMatches = cm.google(searchName, 10);
				for (SearchResult nameMatch : nameMatches.getResults()) {
					String bizId = nameMatch.getBizId();
					if (bizId != null) { // this is data, not content
						Contact contact = persistence.retrieve(contactDocument, bizId, false);
						if ((contact != null) && ContactType.person.equals(contact.getContactType())) {
							distinctContacts.put(contact, Integer.valueOf(nameMatch.getScore() / 100));
						}
					}
				}
			}
		}
				
		// Add to the resulting collection
		for (Contact contact : distinctContacts.keySet()) {
			UserCandidateContact c = UserCandidateContact.newInstance();
			c.setContact(contact);
			c.setMatchScore(distinctContacts.get(contact));
			c.setParent(adminUser);
			candidateContacts.add(c);
		}
		
		if (candidateContacts.isEmpty()) {
			Contact contact = Contact.newInstance();
			contact.setName(adminUser.getSearchContactName());
			contact.setEmail1(adminUser.getSearchEmail());
			contact.setContactType(ContactType.person);
			adminUser.setContact(contact);
		}

		return new ServerSideActionResult<>(adminUser);
	}
}
