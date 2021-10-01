package com.paymybuddy.controller;

import com.paymybuddy.service.BankAccountService;
import com.paymybuddy.service.UserService;
import com.paymybuddy.service.form.ProfileForm;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class BankAccountController {
    private final UserService userService;
    private final BankAccountService bankAccountService;

    public BankAccountController(UserService userService, BankAccountService bankAccountService) {
        this.userService = userService;
        this.bankAccountService = bankAccountService;
    }


    @PostMapping("/addamount")
    public ModelAndView addamount(@ModelAttribute("profileForm") ProfileForm form) {
        bankAccountService.setAmount(form);
        return new
                ModelAndView("profile", "profileForm", new ProfileForm());
    }
}

