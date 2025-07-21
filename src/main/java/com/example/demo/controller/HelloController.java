package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String hello() {
        //return "Hello from Spring Boot + PostgreSQL!"
        //return "Hello from Dhirajkumar Lulla + DB tech!";
        return "Hello from Project which executes Docker with Jenkins ";
    }
}
