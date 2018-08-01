package com.sanjay.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sanjay.mvc.dao.QuizDAO;
import com.sanjay.mvc.model.Question;

@Controller
public class AddQuestion {
	@Autowired
	QuizDAO dao;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/addquestion", method = RequestMethod.GET)
	public ModelAndView showAddform() {
		ModelAndView mav = new ModelAndView("addquestion");
		mav.addObject("ques", new Question());
		return mav;
	}

	@RequestMapping(value = "/addquestion", method = RequestMethod.POST)
	public ModelAndView getscore(@ModelAttribute("ques") Question question,

			ModelMap model) {
		{
			dao.addQuestion(question);

			return new ModelAndView("redirect:/");
		}
	}

}