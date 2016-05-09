package com.allianz.qportalapp.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="form")
public class FormField {

	private int fieldID;
	private int formID;
	private int segmentID;
	private String fieldName;
	private String fieldType;
	private String isPredefineData;
	//private String predefineValue[];
	private String predefineValue;

	
	public FormField(int fieldID, int formID, int segmentID, String fieldName,
			String fieldType,String isPredefineData) {
		
		super();
		this.fieldID = fieldID;
		this.formID = formID;
		this.segmentID = segmentID;
		this.fieldName = fieldName;
		this.fieldType = fieldType;
		this.isPredefineData=isPredefineData;
	}
	
	

	public FormField(int formID, int segmentID, String fieldName,
			String fieldType, String isPredefineData,String predefineValue) {
		super();
		this.formID = formID;
		this.segmentID = segmentID;
		this.fieldName = fieldName;
		this.fieldType = fieldType;
		this.isPredefineData = isPredefineData;
		this.predefineValue=predefineValue;
	}
	
	

	public FormField(int formID, int segmentID, String fieldName,
			String fieldType, String isPredefineData) {
		super();
		this.formID = formID;
		this.segmentID = segmentID;
		this.fieldName = fieldName;
		this.fieldType = fieldType;
		this.isPredefineData = isPredefineData;
	}

	public FormField(String predefineValue) {
		super();
		this.predefineValue = predefineValue;
	}



	public int getFieldID() {
		return fieldID;
	}



	public void setFieldID(int fieldID) {
		this.fieldID = fieldID;
	}



	public int getFormID() {
		return formID;
	}



	public void setFormID(int formID) {
		this.formID = formID;
	}



	public int getSegmentID() {
		return segmentID;
	}



	public void setSegmentID(int segmentID) {
		this.segmentID = segmentID;
	}



	public String getFieldName() {
		return fieldName;
	}



	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}



	public String getFieldType() {
		return fieldType;
	}



	public void setFieldType(String fieldType) {
		this.fieldType = fieldType;
	}



	public String getIsPredefineData() {
		return isPredefineData;
	}



	public void setIsPredefineData(String isPredefineData) {
		this.isPredefineData = isPredefineData;
	}



	public String getPredefineValue() {
		return predefineValue;
	}



	public void setPredefineValue(String predefineValue) {
		this.predefineValue = predefineValue;
	}


	
	
	
}
