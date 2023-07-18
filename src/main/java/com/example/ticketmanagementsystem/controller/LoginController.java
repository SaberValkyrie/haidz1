package com.example.ticketmanagementsystem.controller;

import com.example.ticketmanagementsystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/login")
public class LoginController {
    private UserService userService;

    @GetMapping("/showMyLoginPage")
    public String showMyLoginPage() {
        return "login";
    }
    @Autowired
    public LoginController(UserService userService) {
        this.userService = userService;
    }
    @GetMapping("/access-denied")
    public String accessDenied() {
        return "access-denied";
    }
}

