package kr.co.foodfinder.notice.service;

import java.util.List;
import java.util.Map;

import kr.co.foodfinder.notice.domain.Notice;
import kr.co.foodfinder.notice.domain.PageInfo;

public interface NoticeService {

	int insertNotice(Notice notice);


	int modifyNotice(Notice notice);


	int deleteNotice(int noticeNo);


	int getListCount(Map<String, String> sMap);

	Notice selectOneByNo(int noticeNo);

	List<Notice> selectsAllNotice(PageInfo pInfo);


	List<Notice> searchNoticeByKeyword(PageInfo pInfo, Map<String, String> sMap);


	int getListCount();

}
