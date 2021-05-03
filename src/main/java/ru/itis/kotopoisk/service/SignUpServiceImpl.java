package ru.itis.kotopoisk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import ru.itis.kotopoisk.models.User;
import ru.itis.kotopoisk.models.UserForm;
import ru.itis.kotopoisk.models.states.UserRole;
import ru.itis.kotopoisk.models.states.UserState;
import ru.itis.kotopoisk.repository.UserRepository;

import java.util.UUID;

@Component
public class SignUpServiceImpl implements SignUpService {

    @Autowired
    private UserRepository usersRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private MailsService mailsService;

    @Override
    public void signUp(UserForm form) {
        User newUser = User.builder()
                .email(form.getEmail())
                .password(passwordEncoder.encode(form.getPassword()))
                .nickname(form.getNickname())
                .role(UserRole.USER)
                .state(UserState.NOT_CONFIRMED)
                .confirmCode(UUID.randomUUID().toString())
                .build();

        usersRepository.save(newUser);

        mailsService.sendEmailForConfirm(newUser.getEmail(), newUser.getConfirmCode());
    }
}
