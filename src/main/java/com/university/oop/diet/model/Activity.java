package com.university.oop.diet.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum Activity {
    MINIMUM(1),
    LOW(1.3),
    NORMAL(1.6),
    HIGH(1.7),
    EXTRA(1.9);

    private final double coefficient;
}
