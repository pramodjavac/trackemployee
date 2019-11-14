package com.demo.sample.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.sample.modal.Employee;

public interface SampleRepo extends JpaRepository<Employee,Integer>{

}
