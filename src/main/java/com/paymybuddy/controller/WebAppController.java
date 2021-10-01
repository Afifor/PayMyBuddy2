package com.paymybuddy.controller;

import com.paymybuddy.model.User;
import com.paymybuddy.service.UserService;
import com.paymybuddy.service.form.ProfileForm;
import com.paymybuddy.service.form.RegisterForm;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@RestController
public class WebAppController {

    private final UserService userService;

    public WebAppController(UserService userService) {
        this.userService = userService;
    }


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


    // Signup page
    @GetMapping("/signup")
    public ModelAndView signup(Model model) {
        return new ModelAndView("signup", "registerForm", new RegisterForm());
    }

    // Home page (connected)
    @GetMapping("/home")
    public ModelAndView home(Model model) {
        return new ModelAndView("home");
    }

    // Profile page
    @GetMapping("/profile")
    public ModelAndView profile(Model model) {
        User user = userService.getUserByUsername();
        model.addAttribute("user", user);
        return new ModelAndView("profile", "profileForm", new ProfileForm());}
}

