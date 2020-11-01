package com.university.oop.diet.service;

import com.university.oop.diet.model.Recipe;
import com.university.oop.diet.repository.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecipeServiceImpl implements RecipeService {
    @Autowired
    private RecipeRepository recipeRepository;

    @Override
    public Recipe getById(Long id) {
        return recipeRepository.getOne(id);
    }

    @Override
    public void save(Recipe recipe) {
        recipeRepository.save(recipe);
    }

    @Override
    public void delete(Long id) {
        recipeRepository.deleteById(id);
    }

    @Override
    public List<Recipe> getAll() {
        return recipeRepository.findAll();
    }
}
