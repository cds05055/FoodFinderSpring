package kr.co.foodfinder.user.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.foodfinder.user.domain.User;
import kr.co.foodfinder.user.service.UserService;
import kr.co.foodfinder.user.store.UserStore;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserStore uStore;
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertUser(User user) {
		int result = uStore.insertUser(session, user);
		return result;
	}

	@Override
	public int modifyUser(User user) {
		int result = uStore.updateUser(session, user);
		return result;
	}

	@Override
	public int deleteUser(String userId) {
		int result = uStore.deleteUser(session, userId);
		return result;
	}

	@Override
	public User selectCheckLogin(User user) {
		User uOne = uStore.selectCheckLogin(session, user);
		return uOne;
	}

	@Override
	public User selectOneById(String userId) {
		User user = uStore.selectOneById(session, userId);
		return user;
	}

}
