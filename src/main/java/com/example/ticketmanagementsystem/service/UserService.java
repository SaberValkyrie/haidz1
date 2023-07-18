package com.example.ticketmanagementsystem.service;

import com.example.ticketmanagementsystem.entity.User;

public interface UserService {
    User findUserByUsername(String username);

    void saveUser(User user);
}
