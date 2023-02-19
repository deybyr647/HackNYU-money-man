package com.example.demo.model;

// Importing required classes
import com.fasterxml.jackson.databind.util.JSONPObject;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.bson.json.JsonObject;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
//import javax.;
// Annotations
@Data
@NoArgsConstructor




@Document(collection = "FirstTestCollection")
public class User {
    public User(int id, String username, String email, String password){
        super();
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
    }
//
//    public User(JsonObject json){
//        super();
//        this.id = json.getInt('id');
//
//    }


    @Id private int id;
    private String username;
    private String email;
    private String password;
}
