package kr.co.foodfinder.user.domain;

import java.sql.Timestamp;

public class User {
	private String userId;
	private String userPw;
	private String userNickname;
	private String userName;
	private int userAge;
	private String userGender;
	private String userPhone;
	private Timestamp userEnrollDate;
	
	
	public User() {
		super();
	}
	
	public User(String userId, String userPw) {
		super();
		this.userId = userId;
		this.userPw = userPw;
	}

	public User(String userId, String userPw, String userNickname, String userName, int userAge, String userGender,
			String userPhone, Timestamp userEnrollDate) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userNickname = userNickname;
		this.userName = userName;
		this.userAge = userAge;
		this.userGender = userGender;
		this.userPhone = userPhone;
		this.userEnrollDate = userEnrollDate;
	}
	public User(String userId, String userPw, String userNickname, String userName, int userAge, String userGender,
			String userPhone) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userNickname = userNickname;
		this.userName = userName;
		this.userAge = userAge;
		this.userGender = userGender;
		this.userPhone = userPhone;
	}
	
	
	public User(String userId, String userPw, String userNickname, String userPhone) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userNickname = userNickname;
		this.userPhone = userPhone;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserAge() {
		return userAge;
	}
	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public Timestamp getUserEnrollDate() {
		return userEnrollDate;
	}
	public void setUserEnrollDate(Timestamp userEnrollDate) {
		this.userEnrollDate = userEnrollDate;
	}
	
	
	@Override
	public String toString() {
		return "유저 [아이디=" + userId + ", 비밀번호=" + userPw + ", 닉네임=" + userNickname + ", 이름="
				+ userName + ", 나이=" + userAge + ", 성별=" + userGender + ", 전화번호=" + userPhone
				+ ", 가입일=" + userEnrollDate + "]";
	}
	
	
}
