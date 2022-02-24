package com.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Index {

    @RequestMapping("/")
    public String index(Model model) {
    	return "index.jsp";
    }
    
    @PostMapping(value="/send")
    public String send(	@RequestParam(value="numberPick") Integer numberPick,
    					@RequestParam(value="cityName") String cityName,
    					@RequestParam(value="personName") String personName,
    					@RequestParam(value="hobby") String hobby,
    					@RequestParam(value="thing") String thing,
    					@RequestParam(value="message") String message,
    					HttpSession session) {
    	
    	session.setAttribute("numberPick", numberPick);
    	session.setAttribute("cityName", cityName);
    	session.setAttribute("personName", personName);
    	session.setAttribute("hobby", hobby);
    	session.setAttribute("thing", thing);
    	session.setAttribute("message", message);

    	return "redirect:/show";
    }
//	Redirect
    @RequestMapping("/show")
    public String show(Model model, HttpSession session) {
    	model.addAttribute("numberPick", session.getAttribute("numberPick"));
    	model.addAttribute("cityName", session.getAttribute("cityName"));
    	model.addAttribute("personName", session.getAttribute("personName"));
    	model.addAttribute("hobby", session.getAttribute("hobby"));
    	model.addAttribute("thing", session.getAttribute("thing"));
    	model.addAttribute("message", session.getAttribute("message"));
    	return "show.jsp";
    }
}
