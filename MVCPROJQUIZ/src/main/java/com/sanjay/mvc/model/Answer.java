package com.sanjay.mvc.model;
											/*Plain Old Java Object with Getters/Setters*/
public class Answer { 
	private String username;
	private int questionnum;
	private int correctoption;
	private int selectedoption;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public int getSelectedoption() {
		return selectedoption;
	}

	public void setSelectedoption(int selectedoption) {
		this.selectedoption = selectedoption;
	}

}
