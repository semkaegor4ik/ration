package com.university.oop.diet.controller;

import com.university.oop.diet.model.Product;
import com.university.oop.diet.model.Recipe;
import com.university.oop.diet.service.ProductService;
import com.university.oop.diet.service.RecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;

@RestController
@RequestMapping
public class startController {

    @Autowired
    private ProductService productService;
    @Autowired
    private RecipeService recipeService;

    @GetMapping
    public String start() {
        return "main";
    }

    @RequestMapping(value = "/all", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<Object>> list() {
        ArrayList<Object> list = new ArrayList<>();
        list.addAll(productService.getAll());
        list.addAll(recipeService.getAll());
        if(list.isEmpty())
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        return new ResponseEntity<>(list, HttpStatus.OK);
    }

    @RequestMapping(value = "/saveProduct", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Product> saveProduct(@RequestBody @Valid Product product){
        HttpHeaders headers = new HttpHeaders();
        if(product == null)
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        this.productService.save(product);
        return new ResponseEntity<>(product, headers, HttpStatus.CREATED);
    }

    @RequestMapping(value = "/saveRecipe", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Recipe> saveRecipe(@RequestBody @Valid Recipe recipe){
        HttpHeaders headers = new HttpHeaders();
        if(recipe == null)
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        this.recipeService.save(recipe);
        return new ResponseEntity<>(recipe, headers, HttpStatus.CREATED);
    }

}
