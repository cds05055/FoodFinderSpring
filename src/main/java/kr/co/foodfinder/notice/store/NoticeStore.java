package kr.co.foodfinder.notice.store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.foodfinder.notice.domain.Notice;
import kr.co.foodfinder.notice.domain.PageInfo;

public interface NoticeStore {

	int insertNotice(SqlSession session, Notice notice);

	int modifyNotice(SqlSession session, Notice notice);

	int deleteNotice(SqlSession session, int noticeNo);

	int selectListCount(SqlSession session);

	int selectListCount(SqlSession session, Map<String, String> sMap);

	Notice selectOneByNo(SqlSession session, int noticeNo);

	List<Notice> selectsAllNotice(SqlSession session, PageInfo pInfo);

	List<Notice> searchNoticeByKeyword(SqlSession session, PageInfo pInfo, Map<String, String> sMap);

}
