package ru.itis.kotopoisk.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.kotopoisk.models.User;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByConfirmCode(String confirmCode);
    Optional<User> findByEmail(String email);
}
