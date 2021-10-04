package com.paymybuddy.service;

import com.paymybuddy.model.Connection;
import com.paymybuddy.model.User;
import com.paymybuddy.repository.ConnectionRepository;
import com.paymybuddy.repository.UserRepository;
import com.paymybuddy.service.form.AddFriendForm;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
public class ConnectionService {
    UserRepository userRepository;
    ConnectionRepository connectionRepository;

    public ConnectionService(UserRepository userRepository, ConnectionRepository connectionRepository) {
        this.userRepository = userRepository;
        this.connectionRepository = connectionRepository;
    }

    public void addConnection(final AddFriendForm form) {
        User user = userRepository
                .findUserByUsername(form.getUsername())
                .orElseThrow(() -> new RuntimeException("user with username " + form.getUsername() + " not found"));
        org.springframework.security.core.userdetails.User springUser = (org.springframework.security.core.userdetails.User) SecurityContextHolder
                .getContext().getAuthentication().getPrincipal();
        User connectedUser = userRepository.findUserByUsername(springUser.getUsername())
                .orElseThrow(() -> new RuntimeException("user with username  not found"));
        Connection connection = new Connection();
        connection.setUser1(connectedUser);
        connection.setUser2(user);
        connectionRepository.save(connection);
    }
}
