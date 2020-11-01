package com.university.oop.diet.service;

import com.university.oop.diet.model.Recipe;

import java.util.List;

public interface RecipeService {
    Recipe getById(Long id);

    void save(Recipe recipe);

    void delete(Long id);

    List<Recipe> getAll();
}
