package com.sanjay.mvc.dao;

import java.util.List;

import com.sanjay.mvc.model.*;

public interface QuizDAO {						/*DAO interface listing all the methods used in the application business logic*/

	public List<Question> ListQuestions(int subjectid);

	public void addQuestion(Question question);

	public void deleteQuestion(int questionnum, int subjectid);
}
