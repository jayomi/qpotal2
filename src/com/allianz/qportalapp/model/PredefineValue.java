package com.allianz.qportalapp.model;

public class PredefineValue {

	private int formId;
	private int segmentId;
	private int fieldId;
	private String value;
	private int order;
	
	public PredefineValue(int formId, int segmentId, int fieldId, String value) {
		super();
		this.formId = formId;
		this.segmentId = segmentId;
		this.fieldId = fieldId;
		this.value = value;
	}

	public int getFormId() {
		return formId;
	}

	public void setFormId(int formId) {
		this.formId = formId;
	}

	public int getSegmentId() {
		return segmentId;
	}

	public void setSegmentId(int segmentId) {
		this.segmentId = segmentId;
	}

	public int getFieldId() {
		return fieldId;
	}

	public void setFieldId(int fieldId) {
		this.fieldId = fieldId;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}
	
	
}
