package com.university.oop.diet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @GetMapping()
    public String main() {
        return "main";
    }

    @GetMapping("/info")
    public String info() {
        return "info";
    }

}
