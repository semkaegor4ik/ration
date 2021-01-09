package com.university.oop.diet.controller;

import com.university.oop.diet.model.NormalRecipe;
import com.university.oop.diet.model.RecipeType;
import com.university.oop.diet.model.User;
import com.university.oop.diet.service.RecipeBuilderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rationTest")
public class TestRationController {
        @Autowired
        private RecipeBuilderService recipeBuilderService;

        @GetMapping()
        public NormalRecipe getRecipes() {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            User myUser = (User)auth.getPrincipal();
            return recipeBuilderService.getRecipe(RecipeType.BREAKFAST, myUser);
        }
    }