package pers.Brown.Dove.Domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USER")
public class User {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "password")
	private String passWord;

	private String ConfirmPassword;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "email")
	private String email;

	@Column(name = "phone")
	private int phone;

	public User() {
	};

	public int getId() {
		return this.id;
	}

	public void setId(int aId) {
		this.id = aId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String aUserName) {
		this.userName = aUserName;
	}

	public String getPassWord() {
		return this.passWord;
	}

	public void setPassWord(String aPassWord) {
		this.passWord = aPassWord;
	}

	public String getConfirmPassword() {
		return this.ConfirmPassword;
	}

	public void setConfirmPassword(String aConfirmPassword) {
		this.ConfirmPassword = aConfirmPassword;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String aFirstName) {
		this.firstName = aFirstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String aLastName) {
		this.lastName = aLastName;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String aEmail) {
		this.email = aEmail;
	}

	public int getPhone() {
		return this.phone;
	}

	public void setPhone(int aPhone) {
		this.phone = aPhone;
	}
}
