package com.tostring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.tostring.beer.Beer;
import com.tostring.services.BeerService;


/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("currentBeer")
public class BeerController {
	
	@ModelAttribute("currentBeer")
	public Beer beer(){
		return new Beer();
	}
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

	 @RequestMapping(path="ViewBeer.do", 
			 params="name",
			 method=RequestMethod.GET)
	 public ModelAndView selectBeer(@RequestParam("name")String name) {
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("singlebeer");
		 mv.getModelMap().addAttribute("currentBeer", beerService.getBeerByName(name));
		 mv.addObject("beer", beerService.getBeerByName(name));
		 return mv;
	 }
	
	 
	 @RequestMapping(path = "EditBeer.do", 
			 method = RequestMethod.POST)
		public ModelAndView editBeer(@RequestParam("name")String name, @RequestParam("brewery")String brewery, 
				@RequestParam("city")String city, @RequestParam("state")String state, @RequestParam("abv")String abv){
			beerService.modifyBeer(name, brewery, city, state, abv);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("beerlist");
			mv.addObject("beerlist", beerService.getBeerList());
		 return mv;
		}
	
	 
	 @RequestMapping(path="AddBeer.do",
			 method=RequestMethod.POST)
	 public ModelAndView addBeer(Beer beer) {
		 beer.setId(beerService.getBeerList().size()+1+"");
		 beerService.addBeer(beer);
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("beerlist");
		 mv.addObject("beerlist", beerService.getBeerList());
		 return mv;
	 }
	 
	 @RequestMapping(path="DeleteBeer.do",
			 method=RequestMethod.POST)
	 public ModelAndView removeBeer(@RequestParam("name")String name) {
		 beerService.removeBeer(name);
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("beerlist");
		 mv.addObject("beerlist", beerService.getBeerList());
		 return mv;
		 

	 }
	 
//	 @RequestMapping(path="SendToAddForm.do")
//	 public ModelAndView addBeer() {
//		 ModelAndView mv = new ModelAndView();
//		 mv.setViewName("addbeer");
//		 return mv;
//	 }

//	 @RequestMapping(path="SendToRemoveForm.do")
//	 public ModelAndView removeBeer() {
//		 ModelAndView mv = new ModelAndView();
//		 mv.setViewName("removebeer");
//		 return mv;
//	 }
	 
	 
	 
	 @RequestMapping(path="initial.do")
	 public ModelAndView initial() {
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("index");
		 return mv;
	 }
	 
	 
	 
}
