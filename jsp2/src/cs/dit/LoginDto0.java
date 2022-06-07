package cs.dit;

public class LoginDto0 {
	private String id;
	private String name;
	private String pwd;
	
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

	
	
	
	public LoginDto0(String id, String name, String pwd) {//필드가 있는 생성자
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		
	}
	public LoginDto0() {
		// TODO Auto-generated constructor stub
	}
}