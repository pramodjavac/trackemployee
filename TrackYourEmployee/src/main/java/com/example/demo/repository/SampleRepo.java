package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.modal.Employee;

public interface SampleRepo extends JpaRepository<Employee,Integer>{

}
