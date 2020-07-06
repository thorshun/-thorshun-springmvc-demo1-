package com.earlyfrost.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/helloWorld")
public class HelloWorldController {

    @RequestMapping("/showForm")
    public String showForm(){
        return "helloworld-form";
    }

    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }

    @RequestMapping("/processFromVersion2")
    public ModelAndView letsShoutDude(HttpServletRequest request){
        String theName = request.getParameter("studentName");
        theName = theName.toUpperCase();
        String message = "Yo! " + theName;
        ModelAndView mv = new ModelAndView();
        mv.addObject("message", message);
        mv.setViewName("helloworld");
        return mv;
    }

    @RequestMapping("/processFromVersion3")
    public ModelAndView processFromVersion3(@RequestParam("studentName") String theName){
        theName = theName.toUpperCase();
        String message = "Hey my friend from v3! " + theName;
        ModelAndView mv = new ModelAndView();
        mv.addObject("message", message);
        mv.setViewName("helloworld");
        return mv;
    }
}
