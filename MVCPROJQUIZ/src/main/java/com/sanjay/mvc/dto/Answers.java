package com.sanjay.mvc.dto;
									/*DTO used to transfer data from controller to view*/
public class Answers {
	private int[] answer;
	private int subjectid;

	public int getSubjectid() {
		return subjectid;
	}

	public void setSubjectid(int subjectid) {
		this.subjectid = subjectid;
	}

	public int[] getAnswer() {
		return answer;
	}

	public void setAnswer(int[] answer) {
		this.answer = answer;
	}

}
