package com.university.diet.service;

import com.university.diet.model.Recipe;
import com.university.diet.model.RecipeType;
import com.university.diet.repository.RecipeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RecipeServiceImpl implements RecipeService {

    private final RecipeRepository recipeRepository;

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

    @Override
    public List<Recipe> findByRecipeType(RecipeType recipeType) {
        return recipeRepository.findByRecipeType(recipeType);
    }
}
