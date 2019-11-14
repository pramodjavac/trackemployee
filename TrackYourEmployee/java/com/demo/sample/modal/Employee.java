package com.demo.sample.modal;

import javax.persistence.*;

@Entity
@Table(name = "EMPLOYEES")
public class Employee {
	
	@Id
	private int id;
	private String name;
	private String doj;
	private int numberOfInterviewsScheduled;
	private String upcomingInterviews;
	private String clientsAttended;
	private String comments;
	
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getClientsAttended() {
		return clientsAttended;
	}
	public void setClientsAttended(String clientsAttended) {
		this.clientsAttended = clientsAttended;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
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
	
}
