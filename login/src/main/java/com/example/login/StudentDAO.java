package com.example.login;


import java.util.List;



public interface StudentDAO {
	public void insertStudent(Student s);
	public List<Student> getAll();
}
