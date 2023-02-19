package com.example.demo;

import com.example.demo.model.User;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@RestController

public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);

	}

	@GetMapping("/hello")
	public String hello(@RequestParam(value = "name", defaultValue = "World") String name) {

		return String.format("Helo %s!", name);
	}


	@GetMapping("/testing")
	public String testing(@RequestParam(value = "amount", defaultValue = "1") String amount) {
		String uri = "https://api.randomuser.me/?results=" + amount.toString();

		RestTemplate restTemplate = new RestTemplate();
		String result = restTemplate.getForObject(uri, String.class);
		return result;
	}

	@GetMapping("/GenerateUser")
	public String user(@RequestParam(value = "id", defaultValue = "0") int id,
			@RequestParam(value = "name", defaultValue = "Bryan") String name,
				@RequestParam(value = "email", defaultValue = "example.com") String email,
				@RequestParam(value = "password", defaultValue = "pass") String password) throws Exception{
		User newUser = new User(id,name, email, password);
		ObjectMapper mapper = new ObjectMapper();
		String user = mapper.convertValue(newUser, String.class);
		return user;
	}

	@GetMapping("/error")
	public String error(){
		return ("Oh no! It seems like you have run into an error! The team is quickly working to fix this issue!");
	}


	private String endPoint = "https://identitytoolkit.googleapis.com/v1/accounts:";
	private String signUp = "signUp?key=";
	private String signIn = "signInWithPassword?key=";
	private String key = "";
}
