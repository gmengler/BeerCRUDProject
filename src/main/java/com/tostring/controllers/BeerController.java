package com.tostring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tostring.services.BeerService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BeerController {
	
	
	@Autowired
	private BeerService beerService;

	 @Autowired
	 public void setBeerDAO(BeerService beerService) {
		 this.beerService = beerService;
	 }
	 
	 
	 
	 @RequestMapping(path="GetBeerList.do", 
				method=RequestMethod.GET)
		public ModelAndView getBeerList() {
			ModelAndView mv = new ModelAndView();
			mv.addObject("beerlist", beerService.getBeerList());
			mv.setViewName("beerlist");
			return mv;
		}
	
	 @RequestMapping(path="AddBeer.do", 
			 method=RequestMethod.GET)
	 public ModelAndView getBeerList(@RequestParam("list") String n, @RequestParam("description") String d) {
		 System.out.println(n);
		 System.out.println(d);
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("beer", beerService.getBeerList());
		 mv.setViewName("home.jsp");
		 return mv;
	 }
	
}
