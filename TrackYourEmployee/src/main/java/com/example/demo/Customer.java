package com.example.demo;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Customer {
	
	private int Id;
	private String name;
	private String doj;
	private int numberOfInterviewsScheduled;
	private String upcomingInterviews;
	
	public String getDoj() {
		return doj;
	}

	public void setDoj(String doj) {
		this.doj = doj;
	}

	public int getNumberOfInterviewsScheduled() {
		return numberOfInterviewsScheduled;
	}

	public void setNumberOfInterviewsScheduled(int numberOfInterviewsScheduled) {
		this.numberOfInterviewsScheduled = numberOfInterviewsScheduled;
	}

	public String getUpcomingInterviews() {
		return upcomingInterviews;
	}

	public void setUpcomingInterviews(String upcomingInterviews) {
		this.upcomingInterviews = upcomingInterviews;
	}

	public String getClientsAttended() {
		return clientsAttended;
	}

	public void setClientsAttended(String clientsAttended) {
		this.clientsAttended = clientsAttended;
	}

	private String clientsAttended;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Employee [Id=" + Id + ", name=" + name + ", doj=" + doj + ", numberOfInterviewsScheduled="
				+ numberOfInterviewsScheduled + ", upcomingInterviews=" + upcomingInterviews + ", clientsAttended="
				+ clientsAttended + "]";
	}

}
