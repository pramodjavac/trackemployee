package com.demo.sample;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class TrackEmployeeApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext obj = SpringApplication.run(TrackEmployeeApplication.class, args);
		obj.getBean(Customer.class);
	}

}
