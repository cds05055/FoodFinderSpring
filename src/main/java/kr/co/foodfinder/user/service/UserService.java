package kr.co.foodfinder.user.service;

import kr.co.foodfinder.user.domain.User;

public interface UserService {
	
	/**
	 * ȸ������
	 * @param user
	 * @return int
	 */
	public int insertUser(User user);
	
	/**
	 * ȸ������ ����
	 * @param user
	 * @return int
	 */
	public int modifyUser(User user);
	
	/**
	 * ȸ��Ż��
	 * @param user
	 * @return int
	 */
	public int deleteUser(String userId);
	
	/**
	 * �α���
	 * @param user
	 * @return User
	 */
	public User selectCheckLogin(User user);
	
	/**
	 * ���� ���̵�� �˻�
	 * @param userId
	 * @return User
	 */
	public User selectOneById(String userId);
	
	
}
