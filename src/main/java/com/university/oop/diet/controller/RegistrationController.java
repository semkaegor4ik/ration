package com.university.oop.diet.controller;

import com.university.oop.diet.model.Role;
import com.university.oop.diet.model.User;
import com.university.oop.diet.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {

    @Autowired
    private UserRepository userRepo;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model)
    {
        User user1=userRepo.findByEmail(user.getEmail());

        if (user1 != null)
        {
            model.put("message", "Пользователь занят");
            return "registration";
        }
        System.out.println(user.getActivity());
        System.out.println(user.getGender());
        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);
        return "registration";
    }


    @PutMapping("/changeInfo")
    public String changeUser(User user, Map<String, Object> model)
    {
        User myUser = userRepo.getOne(((User)SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getId());
        myUser.setActivity(user.getActivity());
        myUser.setAge(user.getAge());
        myUser.setEmail(user.getEmail());
        myUser.setGender(user.getGender());
        myUser.setHeight(user.getHeight());
        myUser.setWeight(user.getWeight());
        myUser.setPassword(user.getPassword());
        return "redirect:/registration";
    }

}
