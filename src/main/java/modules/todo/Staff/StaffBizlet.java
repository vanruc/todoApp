package modules.todo.Staff;

import org.skyve.CORE;
import org.skyve.metadata.model.document.Bizlet;
import org.skyve.persistence.DocumentQuery;

import modules.admin.ModulesUtil;
import modules.todo.domain.Staff;

public class StaffBizlet extends Bizlet<Staff> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5984552370111149849L;

	@Override
	public Staff newInstance(Staff bean) throws Exception {
		// Create Document Query for Staff Document
		DocumentQuery dq = CORE.getPersistence().newDocumentQuery(Staff.MODULE_NAME, Staff.DOCUMENT_NAME);
		
		dq.getFilter().addEquals(Staff.userPropertyName, ModulesUtil.currentAdminUser());
		
		// Create staff from dq bean result
		Staff staff = dq.beanResult();
		
		// in case of staff is null, we will return an empty bean with User and Contact Information
		if (staff == null) {
			bean.setUser(ModulesUtil.currentAdminUser());
			return bean;
		}
		// else return staff
		return staff;
	}

}
