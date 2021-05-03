package ru.itis.kotopoisk.service;

import ru.itis.kotopoisk.dto.UserDto;

import java.util.List;

public interface UserService {
    List<UserDto> getAllUsers();
    UserDto getUser(Long userId);
}