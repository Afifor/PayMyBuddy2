package com.paymybuddy.model;

import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@ToString
@RequiredArgsConstructor
@Entity
public class BankAccount {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer accountId;
    private String iban;
    private Double amount;


    public Double creditAccount(Double amount) {
        return this.amount += this.amount;
    }

}
