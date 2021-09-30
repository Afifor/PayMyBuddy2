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

        // Login attempt
        @GetMapping("/trylogin")
        public String loginPage(@RequestParam(value = "error", required = false) String error,
                                @RequestParam(value = "logout", required = false) String logout,
                                Model model) {
            String errorMessge = null;
            if (error != null) {
                errorMessge = "Username or Password is incorrect !!";
            }
            if (logout != null) {
                errorMessge = "You have been successfully logged out !!";
            }
            model.addAttribute("errorMessge", errorMessge);
            return "login";
        }

    // Home page (connected
    @GetMapping("/home")
    public ModelAndView home(Model model) {
        return new ModelAndView("home");
    }
}