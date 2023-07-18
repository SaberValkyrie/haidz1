package com.example.ticketmanagementsystem.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "users")
public class User implements Serializable {

    @Id
    @Column(name = "username", unique = true, nullable = false, length = 100)
    private String username;

    @Column(name = "password", nullable = false, length = 68)
    private String password;

    public User() {
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // Getters and setters

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return  password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
