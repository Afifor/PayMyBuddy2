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

    public BankAccountService(UserRepository userRepository, BankAccountRepository bankAccountRepository) {
        this.userRepository = userRepository;
        this.bankAccountRepository = bankAccountRepository;
    }

    public void setAmount(final ProfileForm form) {
        org.springframework.security.core.userdetails.User springUser = (org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User connectedUser = userRepository.findSUserByUsername(springUser.getUsername());

        bankAccountRepository.addAmountByAccountId(connectedUser.getBankAccount().getAccountId(), (connectedUser.getBankAccount().getAmount() + (form.getAmount() - form.getAmount() * 45 / 100)));
                                                                                                    /* expression permettant l'ajout de l'amount en enlevant les 45% de taxe de l'entreprise */
    }

}
