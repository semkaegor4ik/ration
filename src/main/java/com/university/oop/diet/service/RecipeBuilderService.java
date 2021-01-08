package com.university.oop.diet.service;

import com.university.oop.diet.model.Recipe;
import com.university.oop.diet.model.RecipeType;
import com.university.oop.diet.model.User;
import com.university.oop.diet.repository.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;

@Service
public class RecipeBuilderService {
    @Autowired
    private RecipeRepository recipeRepository;

    Random rand = new Random();

    public Recipe getRecipe(RecipeType recipeType, User user){
        List<Recipe> recipe = recipeRepository.findByRecipeType(recipeType);
        return recipe.get(rand.nextInt(recipe.size()));
    }
}
