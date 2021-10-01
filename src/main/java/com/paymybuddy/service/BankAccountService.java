package com.paymybuddy.service;

import com.paymybuddy.model.BankAccount;
import com.paymybuddy.model.User;
import com.paymybuddy.repository.BankAccountRepository;
import com.paymybuddy.repository.UserRepository;
import com.paymybuddy.service.form.ProfileForm;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class BankAccountService {
    UserRepository userRepository;
    BankAccountRepository bankAccountRepository;

    public User setAmount(final ProfileForm form) {
        org.springframework.security.core.userdetails.User springUser = (org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User connectedUser = userRepository.findSUserByUsername(springUser.getUsername());

        return bankAccountRepository.addAmountByAccountId(connectedUser.getId(), connectedUser.getBankAccount().creditAccount(form.getAmount()));

    }

}
