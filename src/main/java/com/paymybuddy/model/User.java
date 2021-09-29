package com.paymybuddy.model;

import lombok.*;
import org.hibernate.*;

import javax.persistence.*;
import java.util.*;

@Getter
@Setter
@ToString
@RequiredArgsConstructor
@Entity
public class User {
    //Generate an id for the user
    @Id
    @SequenceGenerator(name = "user_sequence",
            sequenceName = "user_sequence",
            allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator = "user_sequence")
    private Long id;
    private String username;
    @Column(unique = true)
    private String email;
    private String password;
    @OneToOne
    private BankAccount bankAccount;
    @ManyToMany
    @ToString.Exclude
    private List<Connection> connections;


}
