package kr.co.foodfinder.user.service;

import kr.co.foodfinder.user.domain.User;

public interface UserService {
	
	/**
	 * 회원가입
	 * @param user
	 * @return int
	 */
	public int insertUser(User user);
	
	/**
	 * 회원정보 수정
	 * @param user
	 * @return int
	 */
	public int modifyUser(User user);
	
	/**
	 * 회원탈퇴
	 * @param user
	 * @return int
	 */
	public int deleteUser(String userId);
	
	/**
	 * 로그인
	 * @param user
	 * @return User
	 */
	public User selectCheckLogin(User user);
	
	/**
	 * 유저 아이디로 검색
	 * @param userId
	 * @return User
	 */
	public User selectOneById(String userId);
	
	
}
