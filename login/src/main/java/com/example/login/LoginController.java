package com.example.login;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;







@Controller
public class LoginController {
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private MarksRepository marksRepository;
    
    @Autowired
    private PersonRepository personRepository;
    
    @Autowired
    private ResultRepository resultRepository;
 
 
    StudentDAOClass sdc;
    @Autowired
	public LoginController(StudentDAOClass sdc) {
		this.sdc=sdc;
	}
    
    @RequestMapping("/")
	public String home()
	{
		return "home";
	}

    @RequestMapping("/viewresults")
    public String EnterHallTicket() {
    	return "viewresults";
    }
    
    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam int id, @RequestParam String password, Model model) {
        User user = userRepository.findById(id);
        if (user != null && user.getPassword().equals(password)) {
            return "welcome"; // Redirect to a welcome page after successful login
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "login";
        }
    }
    
    @GetMapping("/marks-form")
    public String showForm() {
        return "marks-form";
    }

    @PostMapping("/marks-form")
    public String fetchMarks(@RequestParam Long id, Model model) {
        Marks studentMarks = marksRepository.findById(id).orElse(null);
        model.addAttribute("marks", studentMarks);
        return "marks-result";
    }
    
    
   
/*
    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("person", new Person());
        return "form";
    }

    @PostMapping("/form")
    public String submitForm(@ModelAttribute Person person) {
        personRepository.save(person);
        return "redirect:/form";
    }*/
    
    
    @GetMapping("/form")
	public String showForm(Model model ) {
		model.addAttribute("stud1", new Student());
		return "form";
	}
    
    /*
	@PostMapping("/form")
	public String registerStudent(@ModelAttribute("stud1") Student user,Model model) {
		model.addAttribute("stud1",user);
		sdc.insertStudent(user);
		
		return "success";
	}*/
    
    @PostMapping("/form")
    public String registerStudent(@ModelAttribute("stud1") Student student, Model model) {
        sdc.insertStudent(student);
        model.addAttribute("stud1", student); // Set the student model attribute
        return "form"; // Redirect to a success page
    }

    @GetMapping("/insert")
    public String showSuccess() {
        return "success";
    }
    
    @GetMapping("/addMarks")
    public String showAddMarksForm() {
        return "addMarks";
    }

    @PostMapping("/addMarks")
    public String addMarks(Result result, Model model) {
        if (resultRepository.existsById(result.getId())) {
            model.addAttribute("error", "ID already exists. Please enter a valid ID.");
            return "addMarks";
        }

        resultRepository.save(result);
        return "redirect:/success";
    }

    @GetMapping("/success")
    public String showSuccessPage() {
        return "success";
    }
    
    
    @GetMapping("/result")
    public String showResult(Model model) {
        List<Student> students = null; // Initialize to null

        try {
            students = sdc.getAll(); 
        } catch (Exception e) {
            // Handle exceptions here, if needed
            e.printStackTrace();
        }

        model.addAttribute("students", students);
        return "result";
    }
 
    
}

    

