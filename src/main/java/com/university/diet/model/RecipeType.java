package com.university.diet.model;

import lombok.Getter;
import lombok.RequiredArgsConstructor;


@RequiredArgsConstructor
@Getter
public enum RecipeType {
    BREAKFAST(0.25),
    LUNCH(0.4),
    DINNER(0.25);

    private final double procent;
}
