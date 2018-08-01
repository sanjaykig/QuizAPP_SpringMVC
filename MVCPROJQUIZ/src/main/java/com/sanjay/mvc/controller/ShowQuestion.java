package com.sanjay.mvc.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanjay.mvc.dao.*;
import com.sanjay.mvc.model.*;
import com.sanjay.mvc.dto.*;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ShowQuestion {
	@Autowired
	QuizDAO dao;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/showquestion", params = { "subjectid" }, method = RequestMethod.GET)
	public ModelAndView viewques(@RequestParam(value = "subjectid") int subjectid) {
		List<Question> list = dao.ListQuestions(subjectid);
		ModelAndView mav = new ModelAndView("showquestion");
		mav.addObject("qa", new Answers());
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping(value = "/showquestion", method = RequestMethod.POST)
	public ModelAndView getscore(@ModelAttribute("list") Answers answer,

			ModelMap model) {
		{
			int[] anslist = answer.getAnswer();
			model.addAttribute("answer", answer.getAnswer());
			model.addAttribute("subjectid", answer.getSubjectid());
			answer.setSubjectid(answer.getSubjectid());
			System.out.println(Arrays.toString(anslist));
			return new ModelAndView("redirect:/result");
		}

	}

	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public ModelAndView result(Answers answer) {
		int subjectid = answer.getSubjectid();
		List<Question> show = dao.ListQuestions(subjectid);

		ModelAndView mav1 = new ModelAndView("result");
		mav1.addObject("show", show);
		return mav1;
	}

}