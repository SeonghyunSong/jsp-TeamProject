package cs.dit;

public class LoginDto {
	private String id;
	private String name;
	private String pwd;
	private String email;
	private String gender;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
	      this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	public LoginDto(String id, String name, String pwd, String email, String gender) {//필드가 있는 생성자
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.gender = gender;
	}
	public LoginDto() {
		// TODO Auto-generated constructor stub
	}
}