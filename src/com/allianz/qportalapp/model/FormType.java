package com.allianz.qportalapp.model;

public class FormType {

	private int formId;
	private String formName;
	private String formDescription;
	private String department;
	private String formStatus;
	private String userAcess;
	private String timePeriod;
	private String fillingTime;
	private String fillingMethod;
	
	public FormType(int formId, String formName, String formStatus) {
		super();
		this.formId = formId;
		this.formName = formName;
		this.formStatus=formStatus;
	}
	
	public FormType(int formId,String formName,String formDescription,String department){
		super();
		this.formId = formId;
		this.formName = formName;
		this.formDescription=formDescription;
		this.department=department;
	}

	public int getFormId() {
		return formId;
	}

	public void setFormId(int formId) {
		this.formId = formId;
	}

	public String getFormName() {
		return formName;
	}

	public void setFormName(String formName) {
		this.formName = formName;
	}

	public String getFormStatus() {
		return formStatus;
	}

	public void setFormStatus(String formStatus) {
		this.formStatus = formStatus;
	}

	public String getFormDescription() {
		return formDescription;
	}

	public void setFormDescription(String formDescription) {
		this.formDescription = formDescription;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}
	
	
	
	
}
