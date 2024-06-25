package com.example.login;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentDAOClass implements StudentDAO {

	
	StudentRepository sr;
	
	@Autowired
	public StudentDAOClass(StudentRepository sr) {
		this.sr=sr;
	}
	@Override
	public void insertStudent(Student s) {
		// TODO Auto-generated method stub
		sr.save(s);
		
	}
	@Override
	public List<Student> getAll() {
		// TODO Auto-generated method stub
		return sr.findAll();
	}

	

}

