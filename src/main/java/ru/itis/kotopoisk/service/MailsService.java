package ru.itis.kotopoisk.service;

public interface MailsService {
    void sendEmailForConfirm(String email, String code);
}
