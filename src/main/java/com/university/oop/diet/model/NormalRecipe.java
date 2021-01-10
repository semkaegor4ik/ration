package com.university.oop.diet.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Map;
@Data
@AllArgsConstructor
public class NormalRecipe {
    private String name;

    private String description;

    private Map<String, Integer> products;

}
