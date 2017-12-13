package pers.Brown.Dove.Domain;

public class User {

	private String userName;

	private String passWord;

	private String ConfirmPassword;

	private String firstName;

	private String lastName;

	private String email;

	private int phone;

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
