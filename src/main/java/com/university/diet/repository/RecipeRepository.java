package com.university.diet.repository;

import com.university.diet.model.RecipeType;
import com.university.diet.model.Recipe;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {
    List<Recipe> findByRecipeType(RecipeType recipeType);

}
