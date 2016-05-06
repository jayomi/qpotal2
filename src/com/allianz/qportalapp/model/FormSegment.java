package com.allianz.qportalapp.model;

public class FormSegment {
	
	private int formId;
	private int segmentId;
	private String segmentLabel;
	private String segmentDescription;	
	//private int order;	
	
	public FormSegment(String segmentLabel, String segmentDescription) {
		super();
		this.segmentLabel = segmentLabel;
		this.segmentDescription = segmentDescription;
	}
	public FormSegment(int formId, int segmentId, String segmentLabel,
			String segmentDescription) {
		super();
		this.formId = formId;
		this.segmentId = segmentId;
		this.segmentLabel = segmentLabel;
		this.segmentDescription = segmentDescription;
	}
	public FormSegment(int segmentId, String segmentLabel,
			String segmentDescription) {
		super();
		this.segmentId = segmentId;
		this.segmentLabel = segmentLabel;
		this.segmentDescription = segmentDescription;
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
	public String getSegmentLabel() {
		return segmentLabel;
	}
	public void setSegmentLabel(String segmentLabel) {
		this.segmentLabel = segmentLabel;
	}
	public String getSegmentDescription() {
		return segmentDescription;
	}
	public void setSegmentDescription(String segmentDescription) {
		this.segmentDescription = segmentDescription;
	}
	
	
	

}
