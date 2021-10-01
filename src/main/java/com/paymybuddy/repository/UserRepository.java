package com.paymybuddy.repository;

import com.paymybuddy.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    public Optional<User> findUserByUsername(String username);

    @Query(value = "SELECT u FROM User u LEFT JOIN FETCH u.bankAccount WHERE u.username=:username")
    public User findSUserByUsername(String username);
}
