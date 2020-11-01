package com.university.oop.diet.service;

import com.university.oop.diet.model.User;
import com.university.oop.diet.model.UserDto;
import com.university.oop.diet.repository.UserRepository;

import java.util.List;

public interface UserService {
    UserDto save(UserDto user);

    List<UserDto> getAll();

    User getById(long id);

    void delete(long id);
}
