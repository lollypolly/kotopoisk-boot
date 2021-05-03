package ru.itis.kotopoisk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.itis.kotopoisk.dto.UserDto;
import ru.itis.kotopoisk.service.UserService;

@Controller
public class UsersController {

    @Autowired
    private UserService usersService;

    @GetMapping("/users")
    public String getUsersPage(Model model) {
        model.addAttribute("usersList", usersService.getAllUsers());
        return "users_page";
    }

    @GetMapping("/users/{user-id}")
    @ResponseBody
    public ResponseEntity<UserDto> getUser(@PathVariable("user-id") Long userId) {
        return ResponseEntity.ok(usersService.getUser(userId));
    }
}
