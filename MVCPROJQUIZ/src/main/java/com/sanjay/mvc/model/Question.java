package com.sanjay.mvc.model;
										/*Plain Old Java Object with Getters/Setters*/
public class Question {
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private int questionnum;
	private int correctoption;
	private int selectedoption;
	private int subjectid;
	private String subjectname;

	public int getSubjectid() {
		return subjectid;
	}

	public void setSubjectid(int subjectid) {
		this.subjectid = subjectid;
	}

	public String getSubjectname() {
		return subjectname;
	}

	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}

	public int getSelectedoption() {
		return selectedoption;
	}

	public void setSelectedoption(int selectedoption) {
		this.selectedoption = selectedoption;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public int getQuestionnum() {
		return questionnum;
	}

	public void setQuestionnum(int questionnum) {
		this.questionnum = questionnum;
	}

	public int getCorrectoption() {
		return correctoption;
	}

	public void setCorrectoption(int correctoption) {
		this.correctoption = correctoption;
	}

}
