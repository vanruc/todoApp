package modules.todo.domain;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import modules.admin.domain.Contact;
import org.skyve.CORE;
import org.skyve.domain.messages.DomainException;
import org.skyve.domain.types.DateOnly;
import org.skyve.impl.domain.AbstractPersistentBean;
import org.skyve.impl.domain.types.jaxb.DateOnlyMapper;

/**
 * Project
 * 
 * @navcomposed n projectManager 1 Staff
 * @navcomposed n projectOwner 1 Contact
 * @navcomposed n projectCoordinator 1 Staff
 * @stereotype "persistent"
 */
@XmlType
@XmlRootElement
public class Project extends AbstractPersistentBean {
	/**
	 * For Serialization
	 * @hidden
	 */
	private static final long serialVersionUID = 1L;

	/** @hidden */
	public static final String MODULE_NAME = "todo";
	/** @hidden */
	public static final String DOCUMENT_NAME = "Project";

	/** @hidden */
	public static final String projectCodePropertyName = "projectCode";
	/** @hidden */
	public static final String projectNamePropertyName = "projectName";
	/** @hidden */
	public static final String projectDescriptionPropertyName = "projectDescription";
	/** @hidden */
	public static final String projectOwnerPropertyName = "projectOwner";
	/** @hidden */
	public static final String startDatePropertyName = "startDate";
	/** @hidden */
	public static final String endDatePropertyName = "endDate";
	/** @hidden */
	public static final String projectManagerPropertyName = "projectManager";
	/** @hidden */
	public static final String projectCoordinatorPropertyName = "projectCoordinator";

	/**
	 * Project Code
	 **/
	private String projectCode;
	/**
	 * Project Name
	 **/
	private String projectName;
	/**
	 * Project Description
	 * <br/>
	 * Project Description
	 **/
	private String projectDescription;
	/**
	 * Project Owner
	 **/
	private Contact projectOwner = null;
	/**
	 * Start Date
	 **/
	private DateOnly startDate;
	/**
	 * End Date
	 **/
	private DateOnly endDate;
	/**
	 * Project Manager
	 **/
	private Staff projectManager = null;
	/**
	 * Project Coordinator
	 **/
	private Staff projectCoordinator = null;

	@Override
	@XmlTransient
	public String getBizModule() {
		return Project.MODULE_NAME;
	}

	@Override
	@XmlTransient
	public String getBizDocument() {
		return Project.DOCUMENT_NAME;
	}

	public static Project newInstance() {
		try {
			return CORE.getUser().getCustomer().getModule(MODULE_NAME).getDocument(CORE.getUser().getCustomer(), DOCUMENT_NAME).newInstance(CORE.getUser());
		}
		catch (RuntimeException e) {
			throw e;
		}
		catch (Exception e) {
			throw new DomainException(e);
		}
	}

	@Override
	@XmlTransient
	public String getBizKey() {
		try {
			return org.skyve.util.Binder.formatMessage(org.skyve.CORE.getUser().getCustomer(),
														"{projectCode} - {projectName}",
														this);
		}
		catch (Exception e) {
			return "Unknown";
		}
	}

	@Override
	public boolean equals(Object o) {
		return ((o instanceof Project) && 
					this.getBizId().equals(((Project) o).getBizId()));
	}

	/**
	 * {@link #projectCode} accessor.
	 * @return	The value.
	 **/
	public String getProjectCode() {
		return projectCode;
	}

	/**
	 * {@link #projectCode} mutator.
	 * @param projectCode	The new value.
	 **/
	@XmlElement
	public void setProjectCode(String projectCode) {
		preset(projectCodePropertyName, projectCode);
		this.projectCode = projectCode;
	}

	/**
	 * {@link #projectName} accessor.
	 * @return	The value.
	 **/
	public String getProjectName() {
		return projectName;
	}

	/**
	 * {@link #projectName} mutator.
	 * @param projectName	The new value.
	 **/
	@XmlElement
	public void setProjectName(String projectName) {
		preset(projectNamePropertyName, projectName);
		this.projectName = projectName;
	}

	/**
	 * {@link #projectDescription} accessor.
	 * @return	The value.
	 **/
	public String getProjectDescription() {
		return projectDescription;
	}

	/**
	 * {@link #projectDescription} mutator.
	 * @param projectDescription	The new value.
	 **/
	@XmlElement
	public void setProjectDescription(String projectDescription) {
		preset(projectDescriptionPropertyName, projectDescription);
		this.projectDescription = projectDescription;
	}

	/**
	 * {@link #projectOwner} accessor.
	 * @return	The value.
	 **/
	public Contact getProjectOwner() {
		return projectOwner;
	}

	/**
	 * {@link #projectOwner} mutator.
	 * @param projectOwner	The new value.
	 **/
	@XmlElement
	public void setProjectOwner(Contact projectOwner) {
		preset(projectOwnerPropertyName, projectOwner);
		this.projectOwner = projectOwner;
	}

	/**
	 * {@link #startDate} accessor.
	 * @return	The value.
	 **/
	public DateOnly getStartDate() {
		return startDate;
	}

	/**
	 * {@link #startDate} mutator.
	 * @param startDate	The new value.
	 **/
	@XmlSchemaType(name = "date")
	@XmlJavaTypeAdapter(DateOnlyMapper.class)
	@XmlElement
	public void setStartDate(DateOnly startDate) {
		preset(startDatePropertyName, startDate);
		this.startDate = startDate;
	}

	/**
	 * {@link #endDate} accessor.
	 * @return	The value.
	 **/
	public DateOnly getEndDate() {
		return endDate;
	}

	/**
	 * {@link #endDate} mutator.
	 * @param endDate	The new value.
	 **/
	@XmlSchemaType(name = "date")
	@XmlJavaTypeAdapter(DateOnlyMapper.class)
	@XmlElement
	public void setEndDate(DateOnly endDate) {
		preset(endDatePropertyName, endDate);
		this.endDate = endDate;
	}

	/**
	 * {@link #projectManager} accessor.
	 * @return	The value.
	 **/
	public Staff getProjectManager() {
		return projectManager;
	}

	/**
	 * {@link #projectManager} mutator.
	 * @param projectManager	The new value.
	 **/
	@XmlElement
	public void setProjectManager(Staff projectManager) {
		preset(projectManagerPropertyName, projectManager);
		this.projectManager = projectManager;
	}

	/**
	 * {@link #projectCoordinator} accessor.
	 * @return	The value.
	 **/
	public Staff getProjectCoordinator() {
		return projectCoordinator;
	}

	/**
	 * {@link #projectCoordinator} mutator.
	 * @param projectCoordinator	The new value.
	 **/
	@XmlElement
	public void setProjectCoordinator(Staff projectCoordinator) {
		preset(projectCoordinatorPropertyName, projectCoordinator);
		this.projectCoordinator = projectCoordinator;
	}
}
