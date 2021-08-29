package com.university.diet.controller;

import com.university.diet.model.RecipeType;
import com.university.diet.service.RecipeBuilderService;
import com.university.diet.model.User;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/ration")
public class RationController {
    private final RecipeBuilderService recipeBuilderService;

    @GetMapping()
    public String getRecipes(@AuthenticationPrincipal User user, Model model) {
        for (RecipeType recipeType:
        RecipeType.values()) {
            model.addAttribute(String.valueOf(recipeType), recipeBuilderService.getRecipe(recipeType, user));
        }
        return "ration";
    }

}
