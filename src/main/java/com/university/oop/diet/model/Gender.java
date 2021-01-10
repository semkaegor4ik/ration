package com.university.oop.diet.model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum Gender {
    MALE(66, 13.7, 5, 6.8),
    FEMALE(655, 9.6, 1.8, 4.7);
    private final double startCoefficient;
    private final double weightCoefficient;
    private final double heightCoefficient;
    private final double ageCoefficient;

}
