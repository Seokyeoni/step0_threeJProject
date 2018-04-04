package receipt.model.dto;

public class PeopleDTO {
	private String id;
	private String password;
	private String name;
	private String age;
	private String gender;

	public PeopleDTO() {}

	public PeopleDTO(String id, String password, String name, String age, String gender) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.age = age;
		this.gender = gender;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}
	
	public void setJob(String gender) {
		this.gender = gender;
	}
	
	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "People [id=" + id + ", password=" + password + ", name=" + name + ", age=" + age + ", gender=" + gender+ "]";
	}

}