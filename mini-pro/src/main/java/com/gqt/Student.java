package com.gqt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity 
public class Student {
	@Id

	private int sid;
	private String name;
	private String gender;
	private String course;
	private float amount;
	private String city;
	public Student(int sid, String name, String gender, String course, float amount, String city) {
		super();
		this.sid = sid;
		this.name = name;
		this.gender = gender;
		this.course = course;
		this.amount = amount;
		this.city = city;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	
	
}
