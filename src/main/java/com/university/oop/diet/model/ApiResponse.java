package com.university.oop.diet.model;

import lombok.Data;
import org.springframework.http.HttpStatus;
@Data
public class ApiResponse {

    private int status;
    private String message;
    private Object result;

    public ApiResponse(HttpStatus status, String message, Object result){
        this.status = status.value();
        this.message = message;
        this.result = result;
    }
}