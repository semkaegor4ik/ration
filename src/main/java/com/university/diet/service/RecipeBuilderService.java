package com.university.diet.service;

import com.university.diet.model.Gender;
import com.university.diet.model.NormalRecipe;
import com.university.diet.model.Recipe;
import com.university.diet.model.RecipeType;
import com.university.diet.model.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Map;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RecipeBuilderService {

    private final RecipeService recipeService;

    Random rand = new Random();

    public NormalRecipe getRecipe(RecipeType recipeType, User user){
        List<Recipe> recipes = recipeService.findByRecipeType(recipeType);
        Recipe recipe = recipes.get(rand.nextInt(recipes.size()));

        Gender gender = user.getGender();
        double calories = gender.getStartCoefficient()+(gender.getWeightCoefficient() * user.getWeight() + (gender.getHeightCoefficient() * user.getHeight())-(gender.getAgeCoefficient() * user.getAge())) * user.getActivity().getCoefficient();


        return new NormalRecipe(recipe.getName(), recipe.getDescription(), recipe.getProductList().entrySet().stream()
                .map(entry -> Map.entry(entry.getKey().getName(), (int) (entry.getValue() * (calories * recipe.getRecipeType().getProcent() * 100) / entry.getKey().getCaloriesPerHundredGram())))
                .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue)));
    }
}
