package com.university.oop.diet.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private int caloriesPerHundredGram;

    private int proteins;

    private int fats;

    private int carbohydrates;
}
