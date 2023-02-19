package com.example.demo.repository;


// Java Program to Illustrate BookRepo File

import com.example.demo.model.User;
import org.bson.json.JsonObject;
import org.springframework.data.mongodb.repository.DeleteQuery;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;


public interface UserRepo extends MongoRepository<User, Integer>{

    @Query("{id:?0}")
    public User findUserById(Integer id);
    public List<User> findAll();
//    public List<User> save(User user);
    @DeleteQuery
    public User deleteUserById(Integer id);
}
