package com.paymybuddy.repository;

import com.paymybuddy.model.BankAccount;
import com.paymybuddy.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;

public interface BankAccountRepository extends JpaRepository<BankAccount, Long> {

    @Modifying
    @Transactional
    @Query(value = "update BankAccount a set a.amount = :amountToAdd where a.accountId = :accountId")
    public void addAmountByAccountId(Integer accountId, Double amountToAdd);
}
