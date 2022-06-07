package cs.dit;

public class LoginDto2 {
	private String id;
	private String name;
	private String title;
	private String content;
	
	
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public LoginDto2(String id, String name, String title, String content) {//필드가 있는 생성자
		this.id = id;
		this.name = name;
		this.title = title;
		this.content = content;
	}
	public LoginDto2() {
		// TODO Auto-generated constructor stub
	}
}