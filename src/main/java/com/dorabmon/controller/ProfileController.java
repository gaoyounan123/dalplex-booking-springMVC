package com.dorabmon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/profile")
public class ProfileController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView profile(){
        return new ModelAndView("profile");
    }
}