package com.example.demo;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.api.client.json.Json;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;


public class User {
    public User(String username, String email, String password){
        this.username = username;
        this.email = email;
        this.password = password;

    }

    public String getJson(){
        Gson gson = new Gson();

        String json = gson.toJson(this).toString();
        return json;
    }

    private String username;
    private String email;
    private String password;
}
