package com.example.demo;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.UserRecord;
import org.springframework.stereotype.Service;

import com.example.demo.User;

@Service
public class FirebaseController {
    public FirebaseController(){
        FirebaseApp.initializeApp();

    }

    public UserRecord getUserUID(String uid) throws Exception{
        UserRecord userRecord = FirebaseAuth.getInstance().getUser(uid);
        return userRecord;
    }

    public UserRecord getUserEmail(String email) throws Exception{
        UserRecord userRecord = FirebaseAuth.getInstance().getUserByEmail(email);
        return userRecord;
    }

    public String getUserByEmail(String email) throws Exception{
        String userRecord = this.getUserByEmail(email);
        return userRecord;
    }


}
