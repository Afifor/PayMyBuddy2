package com.paymybuddy.service;

import com.paymybuddy.model.BankAccount;
import com.paymybuddy.model.User;
import com.paymybuddy.repository.UserRepository;
import com.paymybuddy.service.form.RegisterForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    PasswordEncoder passwordEncoder;
    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User register(final RegisterForm form) {
        User user = new User();
        user.setUsername(form.getUsername());
        user.setEmail(form.getEmail());
        user.setPassword(passwordEncoder.encode(form.getPassword()));

        BankAccount bankAccount = new BankAccount();
        bankAccount.setAmount(0.0);
        user.setBankAccount(bankAccount);
        return userRepository.save(user);
    }
    /* récupérer un user dans la base pour affichage en vue */
    public User getUserByUsername(){
        org.springframework.security.core.userdetails.User springUser = (org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User connectedUser = userRepository.findSUserByUsername(springUser.getUsername());
        return userRepository.findSUserByUsername(connectedUser.getUsername());
    }
}
