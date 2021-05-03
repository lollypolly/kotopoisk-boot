package ru.itis.kotopoisk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.itis.kotopoisk.dto.UserDto;
import ru.itis.kotopoisk.models.User;
import ru.itis.kotopoisk.repository.UserRepository;

import java.util.List;

@Component
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<UserDto> getAllUsers() {
        return UserDto.from(userRepository.findAll());
    }

    @Override
    public UserDto getUser(Long userId) {
        return UserDto.from(userRepository.findById(userId).orElse(User.builder().build()));
    }
}
