package com.university.diet.controller;

import com.university.diet.model.Activity;
import com.university.diet.model.Gender;
import com.university.diet.model.Role;
import com.university.diet.model.User;
import com.university.diet.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collections;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class RegistrationController {

    private final UserRepository userRepo;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @GetMapping("/login")
    public String login() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        try{
            User myUser = (User)auth.getPrincipal();
        }
        catch (ClassCastException ex){
            return "login";
        }
            return "redirect:/registration";
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
        return "redirect:/";
    }


    @GetMapping("/edit_profile")
    public String userEditForm(Model model) {
        User myUser = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("us", myUser);
        return "edit_profile";
    }

    @PostMapping("/edit_profile")
    public String changeUser(@RequestParam String email,
                             @RequestParam String password,
                             @RequestParam Gender gender,
                             @RequestParam int height,
                             @RequestParam int weight,
                             @RequestParam int age,
                             @RequestParam Activity activity)
    {
        User myUser = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        myUser.setEmail(email);
        myUser.setPassword(password);
        myUser.setGender(gender);
        myUser.setHeight(height);
        myUser.setWeight(weight);
        myUser.setAge(age);
        myUser.setActivity(activity);

        userRepo.save(myUser);
        return "redirect:/";
    }

}
