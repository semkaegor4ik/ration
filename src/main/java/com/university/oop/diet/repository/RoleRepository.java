package com.university.oop.diet.repository;

import com.university.oop.diet.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role,Long> {
}
