package kr.co.foodfinder.user.store;

import org.apache.ibatis.session.SqlSession;

import kr.co.foodfinder.user.domain.User;

public interface UserStore {

	public int insertUser(SqlSession session, User user);
	
	public int updateUser(SqlSession session, User user);
	
	public int deleteUser(SqlSession session, String userId);

	public User selectCheckLogin(SqlSession session, User user);

	public User selectOneById(SqlSession session, String userId);

}
