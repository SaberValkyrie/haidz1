package com.example.ticketmanagementsystem.dao;

import com.example.ticketmanagementsystem.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, String> {
}
