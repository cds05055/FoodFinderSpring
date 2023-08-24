package kr.co.foodfinder.notice.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.foodfinder.notice.domain.Notice;
import kr.co.foodfinder.notice.domain.PageInfo;
import kr.co.foodfinder.notice.service.NoticeService;
import kr.co.foodfinder.notice.store.NoticeStore;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeStore nStore;
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertNotice(Notice notice) {
		int result = nStore.insertNotice(session, notice);
		return result;
	}

	@Override
	public int modifyNotice(Notice notice) {
		int result = nStore.modifyNotice(session, notice);
		return result;
	}

	@Override
	public int deleteNotice(int noticeNo) {
		int result = nStore.deleteNotice(session, noticeNo);
		return result;
	}

	@Override
	public List<Notice> selectsAllNotice(PageInfo pInfo) {
		List<Notice> nList = nStore.selectsAllNotice(session, pInfo);
		return nList;
	}

	@Override
	public Notice selectOneByNo(int noticeNo) {
		Notice notice = nStore.selectOneByNo(session, noticeNo);
		return notice;
	}

	@Override
	public int getListCount() {
		int result = nStore.selectListCount(session);
		return result;
	}

	@Override
	public int getListCount(Map<String, String> sMap) {
		int result = nStore.selectListCount(session, sMap);
		return result;
	}

	@Override
	public List<Notice> searchNoticeByKeyword(PageInfo pInfo, Map<String, String> sMap) {
		List<Notice> sList = nStore.searchNoticeByKeyword(session, pInfo, sMap);
		return sList;
	}
	
	
}
