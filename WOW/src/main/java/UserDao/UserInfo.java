package UserDao;

public class UserInfo {
	private int id;
	private String account;
	private String password;
	private String nickname;
	private String gender;
	private int age;
	private String location;
	private String city;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", account=" + account + ", password=" + password + ", nickname=" + nickname
				+ ", gender=" + gender + ", age=" + age + ", location=" + location + ", city=" + city + ", gold=" + gold
				+ "]";
	}
	public UserInfo(int id, String account, String password, String nickname, String gender, int age, String location,
			String city, int gold) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.nickname = nickname;
		this.gender = gender;
		this.age = age;
		this.location = location;
		this.city = city;
		this.gold = gold;
	}
	private int gold;
	public int getGold() {
		return gold;
	}
	public void setGold(int gold) {
		this.gold = gold;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public UserInfo(){
		
	}
	public UserInfo(int id, String account, String password, String nickname, String gender, int age, String location,int gold) {
		this.id = id;
		this.account = account;
		this.password = password;
		this.nickname = nickname;
		this.gender = gender;
		this.age = age;
		this.location = location;
		this.gold=gold;
	}
	
	
}
