package com.university.oop.diet.repository;

import com.university.oop.diet.model.Recipe;
import com.university.oop.diet.model.RecipeType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {
    List<Recipe> findByRecipeType(RecipeType recipeType);

}
