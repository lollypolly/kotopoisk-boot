package ru.itis.kotopoisk.models;

import lombok.Data;

@Data
public class UserForm {
    private String email;
    private String password;
    private String nickname;
}
