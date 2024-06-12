package com.examportal.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long user_Id;
	private String user_Name;
	private String password="1234";
	private String institute;
	private String role;
	private String enabled;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Exam> exam=new ArrayList<Exam>();

	//	
	//	@JoinTable(
	//			name = "Exam_user", 
	//			joinColumns = { @JoinColumn(name = "user_Id")}, 
	//			inverseJoinColumns = { @JoinColumn(name = "exam_Id") }
	//			)
	//	private Exam exam1;

	//	@OneToMany(mappedBy = "user1", cascade = CascadeType.ALL)
	//	private List<Exam> exam1=new ArrayList<Exam>();
	//	@ManyToOne
	//	@JoinTable(
	//			name = "Exam_user", 
	//			joinColumns = { @JoinColumn(name = "user_Id")}, 
	//			inverseJoinColumns = { @JoinColumn(name = "exam_Id") }
	//			)
	//	private Exam Exam1;

	@ManyToMany(mappedBy = "user")
	List<Exam_user> examuser;

	@ManyToMany(mappedBy = "user")
	List<Score> examuserscore;


	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn(name = "co_Id") Coordinator coordinator;
	 */
	
	
	public User() {
		super();
	}

	


	public User(long user_Id, String user_Name, String password, String institute, String role, String enabled,
			List<Exam> exam, List<Exam_user> examuser, List<Score> examuserscore) {
		super();
		this.user_Id = user_Id;
		this.user_Name = user_Name;
		this.password = password;
		this.institute = institute;
		this.role = role;
		this.enabled = enabled;
		this.exam = exam;
		this.examuser = examuser;
		this.examuserscore = examuserscore;
	}




	public long getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(long user_Id) {
		this.user_Id = user_Id;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public List<Exam> getExam() {
		return exam;
	}

	public void setExam(List<Exam> exam) {
		this.exam = exam;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public List<Exam_user> getExamuser() {
		return examuser;
	}

	public void setExamuser(List<Exam_user> examuser) {
		this.examuser = examuser;
	}

	
	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	public List<Score> getExamuserscore() {
		return examuserscore;
	}

	public void setExamuserscore(List<Score> examuserscore) {
		this.examuserscore = examuserscore;
	}








}