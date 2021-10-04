package com.paymybuddy.controller;

import com.paymybuddy.service.ConnectionService;
import com.paymybuddy.service.form.AddFriendForm;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class FriendsController {
    private final ConnectionService connectionService;

    public FriendsController(ConnectionService connectionService) {
        this.connectionService = connectionService;
    }


    @PostMapping ("/addFriend")
        public ModelAndView addFriend(@ModelAttribute("addFriendForm") AddFriendForm form) {
           connectionService.addConnection(form);
           return new ModelAndView("friends", "addFriendForm", new AddFriendForm());
        }

}
