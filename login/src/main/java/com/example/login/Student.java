package com.example.login;


import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "marks")
public class Student {

	@Id
	private int id;
	
	@Column(name = "name")
	private String firstname;
	
	
	@Column(name = "english")
	private String english;
	
	@Column(name = "maths")
	private String maths;
	
	@Column(name = "science")
	private String science;
	
	@Column(name = "social")
	private String social;
	
	@Column(name = "secondlanguage")
	private String secondlanguage;
	
	public Student() {
		
	}
	
	public Student(int id, String firstname, String lastname) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.english=english;
		this.social=social;
		this.science=science;
		this.maths=maths;
		this.secondlanguage=secondlanguage;
		
	}
	/*
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	*/

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getEnglish() {
		return english;
	}

	public void setEnglish(String english) {
		this.english = english;
	}

	public String getMaths() {
		return maths;
	}

	public void setMaths(String maths) {
		this.maths = maths;
	}

	public String getScience() {
		return science;
	}

	public void setScience(String science) {
		this.science = science;
	}

	public String getSocial() {
		return social;
	}

	public void setSocial(String social) {
		this.social = social;
	}

	public String getSecondlanguage() {
		return secondlanguage;
	}

	public void setSecondlanguage(String secondlanguage) {
		this.secondlanguage = secondlanguage;
	}
	
	
	
}

