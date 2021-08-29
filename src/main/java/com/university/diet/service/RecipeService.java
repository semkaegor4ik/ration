package com.university.diet.service;

import com.university.diet.model.RecipeType;
import com.university.diet.model.Recipe;

import java.util.List;

public interface RecipeService {
    Recipe getById(Long id);

    void save(Recipe recipe);

    void delete(Long id);

    List<Recipe> getAll();

    List<Recipe> findByRecipeType(RecipeType recipeType);
}
