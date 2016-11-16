package com.accenture.farm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.accenture.farm.model.Chicken;
import com.accenture.farm.data.ChickenDAO;

@Controller
@RequestMapping("/Farms")
public class FarmController {
	
	@Autowired
	ChickenDAO chickenDAO;
	
	@RequestMapping("/")
	public ModelAndView chickenList(){
		List<Chicken> chickenList = chickenDAO.chickenList();
		return new ModelAndView("Farms/List", "chickenList", chickenList);
	}
}
