package com.uca.capas.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@RequestMapping("/index")
	public ModelAndView initMain() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping("/result")
	public ModelAndView result(@RequestParam(value="sueldo") double value) {
		ModelAndView mav=new ModelAndView();
		double renta=0,afp=0,sSocial=0,totalRenta,sueldoR;
		afp=value*0.0725;
		sSocial=value*0.03;
		//Para la renta
		if(value>=0.01 && value<=472) {
			renta=0;
		}
		else if(value>472 && value<=895.24) {
			renta=value*0.1;
		}
		else if(value>895.24 && value<=2038.10) {
			renta=value*0.2;
		}
		else if(value>2038.100) {
			renta=value*0.3;
		}
		totalRenta=((renta+afp+sSocial)/value)*100;
		sueldoR=value-((renta+afp+sSocial)/value);
		mav.addObject("total",totalRenta);
		mav.addObject("sueldo",value);
		mav.addObject("renta",renta);
		mav.addObject("afp",afp);
		mav.addObject("social",sSocial);
		mav.addObject("sueldor",sueldoR);
		mav.setViewName("result");
		return mav;
	}

}
