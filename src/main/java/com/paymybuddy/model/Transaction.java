package com.paymybuddy.model;

import lombok.*;

import javax.persistence.*;
import java.time.*;

@Getter
@Setter
@ToString
@Entity
@RequiredArgsConstructor
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Double amount;
    @ManyToOne
    private User emitter;
    @ManyToOne
    private User receiver;
    private LocalDate date;
}
