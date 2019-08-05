package modules.todo.domain;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import org.skyve.CORE;
import org.skyve.domain.messages.DomainException;
import org.skyve.domain.types.DateTime;
import org.skyve.domain.types.Enumeration;
import org.skyve.impl.domain.AbstractPersistentBean;
import org.skyve.impl.domain.types.jaxb.DateTimeMapper;
import org.skyve.metadata.model.document.Bizlet.DomainValue;

/**
 * Todo
 * 
 * @depend - - - PriorityLevel
 * @depend - - - TaskStatus
 * @navcomposed n createdBy 1 Staff
 * @navcomposed n project 1 Project
 * @navcomposed n assignTo 1 Staff
 * @stereotype "persistent"
 */
@XmlType
@XmlRootElement
public class Todo extends AbstractPersistentBean {
	/**
	 * For Serialization
	 * @hidden
	 */
	private static final long serialVersionUID = 1L;

	/** @hidden */
	public static final String MODULE_NAME = "todo";
	/** @hidden */
	public static final String DOCUMENT_NAME = "Todo";

	/** @hidden */
	public static final String taskIDPropertyName = "taskID";
	/** @hidden */
	public static final String priorityLevelPropertyName = "priorityLevel";
	/** @hidden */
	public static final String projectPropertyName = "project";
	/** @hidden */
	public static final String createdByPropertyName = "createdBy";
	/** @hidden */
	public static final String recordedDateTimePropertyName = "recordedDateTime";
	/** @hidden */
	public static final String startDatePropertyName = "startDate";
	/** @hidden */
	public static final String targetDatePropertyName = "targetDate";
	/** @hidden */
	public static final String actualStartDatePropertyName = "actualStartDate";
	/** @hidden */
	public static final String actualFinishDatePropertyName = "actualFinishDate";
	/** @hidden */
	public static final String taskStatusPropertyName = "taskStatus";
	/** @hidden */
	public static final String taskDescriptionPropertyName = "taskDescription";
	/** @hidden */
	public static final String assignToPropertyName = "assignTo";

	/**
	 * Priority Level
	 **/
	@XmlEnum
	public static enum PriorityLevel implements Enumeration {
		medium("med", "Medium"),
		urg("urg", "Urgent"),
		low("low", "Low Priority");

		private String code;
		private String description;

		/** @hidden */
		private DomainValue domainValue;

		/** @hidden */
		private static List<DomainValue> domainValues;

		private PriorityLevel(String code, String description) {
			this.code = code;
			this.description = description;
			this.domainValue = new DomainValue(code, description);
		}

		@Override
		public String toCode() {
			return code;
		}

		@Override
		public String toDescription() {
			return description;
		}

		@Override
		public DomainValue toDomainValue() {
			return domainValue;
		}

		public static PriorityLevel fromCode(String code) {
			PriorityLevel result = null;

			for (PriorityLevel value : values()) {
				if (value.code.equals(code)) {
					result = value;
					break;
				}
			}

			return result;
		}

		public static PriorityLevel fromDescription(String description) {
			PriorityLevel result = null;

			for (PriorityLevel value : values()) {
				if (value.description.equals(description)) {
					result = value;
					break;
				}
			}

			return result;
		}

		public static List<DomainValue> toDomainValues() {
			if (domainValues == null) {
				PriorityLevel[] values = values();
				domainValues = new ArrayList<>(values.length);
				for (PriorityLevel value : values) {
					domainValues.add(value.domainValue);
				}
			}

			return domainValues;
		}
	}

	/**
	 * Task Status
	 **/
	@XmlEnum
	public static enum TaskStatus implements Enumeration {
		defined("defined", "Defined"),
		pending("pending", "Pending"),
		assigned("assign", "Assigned"),
		inprogress("inprogress", "In Progress"),
		review("review", "Review"),
		uat("uat", "UAT"),
		kiv("kiv", "KIV"),
		completed("completed", "Completed");

		private String code;
		private String description;

		/** @hidden */
		private DomainValue domainValue;

		/** @hidden */
		private static List<DomainValue> domainValues;

		private TaskStatus(String code, String description) {
			this.code = code;
			this.description = description;
			this.domainValue = new DomainValue(code, description);
		}

		@Override
		public String toCode() {
			return code;
		}

		@Override
		public String toDescription() {
			return description;
		}

		@Override
		public DomainValue toDomainValue() {
			return domainValue;
		}

		public static TaskStatus fromCode(String code) {
			TaskStatus result = null;

			for (TaskStatus value : values()) {
				if (value.code.equals(code)) {
					result = value;
					break;
				}
			}

			return result;
		}

		public static TaskStatus fromDescription(String description) {
			TaskStatus result = null;

			for (TaskStatus value : values()) {
				if (value.description.equals(description)) {
					result = value;
					break;
				}
			}

			return result;
		}

		public static List<DomainValue> toDomainValues() {
			if (domainValues == null) {
				TaskStatus[] values = values();
				domainValues = new ArrayList<>(values.length);
				for (TaskStatus value : values) {
					domainValues.add(value.domainValue);
				}
			}

			return domainValues;
		}
	}

	/**
	 * Task ID
	 **/
	private String taskID;
	/**
	 * Priority Level
	 **/
	private PriorityLevel priorityLevel = PriorityLevel.medium;
	/**
	 * Project
	 **/
	private Project project = null;
	/**
	 * Created By
	 **/
	private Staff createdBy = null;
	/**
	 * Recorded Date Time
	 **/
	private DateTime recordedDateTime;
	/**
	 * Start Date
	 **/
	private DateTime startDate;
	/**
	 * Target Date
	 **/
	private DateTime targetDate;
	/**
	 * Actual Start Date
	 **/
	private DateTime actualStartDate;
	/**
	 * Actual Finish Date
	 **/
	private DateTime actualFinishDate;
	/**
	 * Task Status
	 **/
	private TaskStatus taskStatus = TaskStatus.defined;
	/**
	 * Task Description
	 * <br/>
	 * Task Description
	 **/
	private String taskDescription;
	/**
	 * Assign To
	 **/
	private Staff assignTo = null;

	@Override
	@XmlTransient
	public String getBizModule() {
		return Todo.MODULE_NAME;
	}

	@Override
	@XmlTransient
	public String getBizDocument() {
		return Todo.DOCUMENT_NAME;
	}

	public static Todo newInstance() {
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
														"{taskID}",
														this);
		}
		catch (Exception e) {
			return "Unknown";
		}
	}

	@Override
	public boolean equals(Object o) {
		return ((o instanceof Todo) && 
					this.getBizId().equals(((Todo) o).getBizId()));
	}

	/**
	 * {@link #taskID} accessor.
	 * @return	The value.
	 **/
	public String getTaskID() {
		return taskID;
	}

	/**
	 * {@link #taskID} mutator.
	 * @param taskID	The new value.
	 **/
	@XmlElement
	public void setTaskID(String taskID) {
		preset(taskIDPropertyName, taskID);
		this.taskID = taskID;
	}

	/**
	 * {@link #priorityLevel} accessor.
	 * @return	The value.
	 **/
	public PriorityLevel getPriorityLevel() {
		return priorityLevel;
	}

	/**
	 * {@link #priorityLevel} mutator.
	 * @param priorityLevel	The new value.
	 **/
	@XmlElement
	public void setPriorityLevel(PriorityLevel priorityLevel) {
		preset(priorityLevelPropertyName, priorityLevel);
		this.priorityLevel = priorityLevel;
	}

	/**
	 * {@link #project} accessor.
	 * @return	The value.
	 **/
	public Project getProject() {
		return project;
	}

	/**
	 * {@link #project} mutator.
	 * @param project	The new value.
	 **/
	@XmlElement
	public void setProject(Project project) {
		preset(projectPropertyName, project);
		this.project = project;
	}

	/**
	 * {@link #createdBy} accessor.
	 * @return	The value.
	 **/
	public Staff getCreatedBy() {
		return createdBy;
	}

	/**
	 * {@link #createdBy} mutator.
	 * @param createdBy	The new value.
	 **/
	@XmlElement
	public void setCreatedBy(Staff createdBy) {
		preset(createdByPropertyName, createdBy);
		this.createdBy = createdBy;
	}

	/**
	 * {@link #recordedDateTime} accessor.
	 * @return	The value.
	 **/
	public DateTime getRecordedDateTime() {
		return recordedDateTime;
	}

	/**
	 * {@link #recordedDateTime} mutator.
	 * @param recordedDateTime	The new value.
	 **/
	@XmlSchemaType(name = "dateTime")
	@XmlJavaTypeAdapter(DateTimeMapper.class)
	@XmlElement
	public void setRecordedDateTime(DateTime recordedDateTime) {
		preset(recordedDateTimePropertyName, recordedDateTime);
		this.recordedDateTime = recordedDateTime;
	}

	/**
	 * {@link #startDate} accessor.
	 * @return	The value.
	 **/
	public DateTime getStartDate() {
		return startDate;
	}

	/**
	 * {@link #startDate} mutator.
	 * @param startDate	The new value.
	 **/
	@XmlSchemaType(name = "dateTime")
	@XmlJavaTypeAdapter(DateTimeMapper.class)
	@XmlElement
	public void setStartDate(DateTime startDate) {
		preset(startDatePropertyName, startDate);
		this.startDate = startDate;
	}

	/**
	 * {@link #targetDate} accessor.
	 * @return	The value.
	 **/
	public DateTime getTargetDate() {
		return targetDate;
	}

	/**
	 * {@link #targetDate} mutator.
	 * @param targetDate	The new value.
	 **/
	@XmlSchemaType(name = "dateTime")
	@XmlJavaTypeAdapter(DateTimeMapper.class)
	@XmlElement
	public void setTargetDate(DateTime targetDate) {
		preset(targetDatePropertyName, targetDate);
		this.targetDate = targetDate;
	}

	/**
	 * {@link #actualStartDate} accessor.
	 * @return	The value.
	 **/
	public DateTime getActualStartDate() {
		return actualStartDate;
	}

	/**
	 * {@link #actualStartDate} mutator.
	 * @param actualStartDate	The new value.
	 **/
	@XmlSchemaType(name = "dateTime")
	@XmlJavaTypeAdapter(DateTimeMapper.class)
	@XmlElement
	public void setActualStartDate(DateTime actualStartDate) {
		preset(actualStartDatePropertyName, actualStartDate);
		this.actualStartDate = actualStartDate;
	}

	/**
	 * {@link #actualFinishDate} accessor.
	 * @return	The value.
	 **/
	public DateTime getActualFinishDate() {
		return actualFinishDate;
	}

	/**
	 * {@link #actualFinishDate} mutator.
	 * @param actualFinishDate	The new value.
	 **/
	@XmlSchemaType(name = "dateTime")
	@XmlJavaTypeAdapter(DateTimeMapper.class)
	@XmlElement
	public void setActualFinishDate(DateTime actualFinishDate) {
		preset(actualFinishDatePropertyName, actualFinishDate);
		this.actualFinishDate = actualFinishDate;
	}

	/**
	 * {@link #taskStatus} accessor.
	 * @return	The value.
	 **/
	public TaskStatus getTaskStatus() {
		return taskStatus;
	}

	/**
	 * {@link #taskStatus} mutator.
	 * @param taskStatus	The new value.
	 **/
	@XmlElement
	public void setTaskStatus(TaskStatus taskStatus) {
		preset(taskStatusPropertyName, taskStatus);
		this.taskStatus = taskStatus;
	}

	/**
	 * {@link #taskDescription} accessor.
	 * @return	The value.
	 **/
	public String getTaskDescription() {
		return taskDescription;
	}

	/**
	 * {@link #taskDescription} mutator.
	 * @param taskDescription	The new value.
	 **/
	@XmlElement
	public void setTaskDescription(String taskDescription) {
		preset(taskDescriptionPropertyName, taskDescription);
		this.taskDescription = taskDescription;
	}

	/**
	 * {@link #assignTo} accessor.
	 * @return	The value.
	 **/
	public Staff getAssignTo() {
		return assignTo;
	}

	/**
	 * {@link #assignTo} mutator.
	 * @param assignTo	The new value.
	 **/
	@XmlElement
	public void setAssignTo(Staff assignTo) {
		preset(assignToPropertyName, assignTo);
		this.assignTo = assignTo;
	}
}
