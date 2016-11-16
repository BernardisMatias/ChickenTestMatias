package com.accenture.farm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.accenture.farm.data.ChickenDAO;
import com.accenture.farm.model.Chicken;

@Controller
@RequestMapping("/Chickens")
public class ChickenController {

	@Autowired
	ChickenDAO chickenDAO;
	
	@RequestMapping("/")
	public ModelAndView chickenList(){
		List<Chicken> chickenList = chickenDAO.chickenList();
		return new ModelAndView("Chickens/List", "chickenList", chickenList);
	}
	
	@RequestMapping("/Delete/{id}")
	public String deleteChicken(@PathVariable("id") String id){
		Chicken chicken = null;
		chicken=chickenDAO.getChicken(Long.parseLong(id));
		chickenDAO.deleteChicken(chicken);
		return "redirect:../../Farms/";
	}
}