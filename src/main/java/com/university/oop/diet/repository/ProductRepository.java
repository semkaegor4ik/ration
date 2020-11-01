package com.university.oop.diet.repository;

import com.university.oop.diet.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
