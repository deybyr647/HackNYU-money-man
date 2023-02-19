package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.example.demo.repository.UserRepo;
import com.example.demo.model.User;

import java.util.List;

@RestController
@CrossOrigin
public class UserController {

    @PostMapping("/addUser")
    public String saveUser(@RequestBody User user){
        repo.save(user);

        return "Added Successfully";
    }

    @GetMapping("/getAllUsers")
    public List<User> getUsers(){
        return repo.findAll();

    }

    @DeleteMapping("/delete/{id}")
    public String deleteUser(@PathVariable int id){
        repo.deleteById(id);
        return "Delete Successfully";
    }


    @Autowired
    private UserRepo repo;
}
