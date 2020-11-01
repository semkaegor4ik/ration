package com.university.oop.diet.service;

import com.university.oop.diet.model.Product;

import java.util.List;

public interface ProductService {
    Product getById(Long id);

    void save(Product product);

    void delete(Long id);

    List<Product> getAll();
}
