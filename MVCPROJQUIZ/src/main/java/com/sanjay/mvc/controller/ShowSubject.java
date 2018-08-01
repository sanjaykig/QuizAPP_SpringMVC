package com.sanjay.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sanjay.mvc.dao.*;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ShowSubject {
	@Autowired
	QuizDAO dao;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/showsubject", method = RequestMethod.GET)
	public ModelAndView viewques() {

		ModelAndView mav = new ModelAndView("showsubject");

		return mav;
	}

}