package com.example.login;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "marks")
public class Result {

    @Id
    private int id;

    private int maths;
    private int science;
    private int social;
    private int english;
    private int secondlanguage;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMaths() {
		return maths;
	}
	public void setMaths(int maths) {
		this.maths = maths;
	}
	public int getScience() {
		return science;
	}
	public void setScience(int science) {
		this.science = science;
	}
	public int getSocial() {
		return social;
	}
	public void setSocial(int social) {
		this.social = social;
	}
	public int getEnglish() {
		return english;
	}
	public void setEnglish(int english) {
		this.english = english;
	}
	public int getSecondlanguage() {
		return secondlanguage;
	}
	public void setSecondlanguage(int secondlanguage) {
		this.secondlanguage = secondlanguage;
	}

    // Getters and setters
}
