package com.university.oop.diet.service;

import com.university.oop.diet.model.*;
import com.university.oop.diet.repository.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.stream.*;

import java.util.List;
import java.util.Random;

@Service
public class RecipeBuilderService {
    @Autowired
    private RecipeRepository recipeRepository;

    Random rand = new Random();

    public NormalRecipe getRecipe(RecipeType recipeType, User user){
        List<Recipe> recipes = recipeRepository.findByRecipeType(recipeType);
        Recipe recipe = recipes.get(rand.nextInt(recipes.size()));

        Gender gender = user.getGender();
        Double calories = gender.getStartCoefficient()+(gender.getWeightCoefficient() * user.getWeight() + (gender.getHeightCoefficient() * user.getHeight())-(gender.getAgeCoefficient() * user.getAge())) * user.getActivity().getCoefficient();


        return new NormalRecipe(recipe.getName(), recipe.getDescription(), recipe.getProductList().entrySet().stream()
                .map(entry -> Map.entry(entry.getKey().getName(), (int) (entry.getValue() * (calories * recipe.getRecipeType().getProcent() * 100) / entry.getKey().getCaloriesPerHundredGram())))
                .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue)));
    }
}
