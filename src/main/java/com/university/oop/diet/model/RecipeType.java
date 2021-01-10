package com.university.oop.diet.model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum RecipeType {
    BREAKFAST(0.25),
    LUNCH(0.4),
    DINNER(0.25);

    private final double procent;
}
