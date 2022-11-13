package com.catulvir.sectors.controller;

import org.springframework.web.bind.annotation.*;

import com.catulvir.sectors.model.User;
import com.catulvir.sectors.repository.UserRepository;

@RestController
public class UserController {
    private UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @PostMapping("users")
    public User saveUser(@RequestBody User user) {
        return userRepository.saveUser(user);
    }

    @PutMapping("users")
    public User updateUser(@RequestBody User user) {
        return userRepository.updateUser(user);
    }
}
