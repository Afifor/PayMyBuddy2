package com.paymybuddy.controller;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@RestController
public class WebAppController {

    // Landing page
    @GetMapping("/")
    public ModelAndView showIndex(Model model) {
        return new ModelAndView("index");
    }

    // Error page
    @GetMapping("/error")
    public ModelAndView error(Model model) {
        return new ModelAndView("error");
    }

    // Login page
    @GetMapping("/login")
    public ModelAndView showLoginForm(Model model) {
        return new ModelAndView("login");
    }
}
