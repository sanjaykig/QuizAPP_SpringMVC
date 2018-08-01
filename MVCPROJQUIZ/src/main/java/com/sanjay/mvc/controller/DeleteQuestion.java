package com.sanjay.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sanjay.mvc.dao.*;
import com.sanjay.mvc.model.*;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DeleteQuestion {
	@Autowired
	QuizDAO dao;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/deletequestions", params = { "subjectid" }, method = RequestMethod.GET)
	public ModelAndView viewques(@RequestParam(value = "subjectid") int subjectid, Question question, ModelMap model) {

		List<Question> list = dao.ListQuestions(subjectid);
		ModelAndView mav = new ModelAndView("deletequestions");
		mav.addObject("list", list);
		mav.addObject("qa", new Question());
		model.addAttribute("subjectid", question.getSubjectid());
		question.setSubjectid(question.getSubjectid());
		return mav;
	}

	@RequestMapping(value = "/deletequestion", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String delete(@RequestParam("questionnum") String questionnum,
			@RequestParam("subjectid") String subjectid) {
		dao.deleteQuestion(Integer.parseInt(questionnum), Integer.parseInt(subjectid));
		return "deletequestions";
	}

	@RequestMapping(value = "/selectdelete", method = RequestMethod.GET)
	public ModelAndView viewques() {

		ModelAndView mav = new ModelAndView("selectdelete");

		return mav;
	}

}
