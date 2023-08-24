package kr.co.foodfinder.notice.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.foodfinder.notice.domain.Notice;
import kr.co.foodfinder.notice.domain.PageInfo;
import kr.co.foodfinder.notice.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService service;
	
	@RequestMapping(value="/notice/insertNotice.do", method=RequestMethod.GET)
	public String showInsertNotice() {
		return "notice/insert";
	}
	
	@RequestMapping(value="/notice/noticeList.do", method=RequestMethod.GET)
	public String showNoticeList(
			@RequestParam(value="page", required=false, defaultValue="1") Integer currentPage
			, Model model) {
		try {
			int totalCount = service.getListCount();
			PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
			List<Notice> nList = service.selectsAllNotice(pInfo);
			if(!nList.isEmpty()) {
				model.addAttribute("pInfo", pInfo);
				model.addAttribute("nList", nList);
				return "notice/list";
			} else {
				model.addAttribute("msg", "공지사항 조회 실패");
				model.addAttribute("url", "/user/mypage.do");
				return "common/serviceFailed";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "공지사항 조회 실패");
			model.addAttribute("url", "/user/mypage.do");
			return "common/serviceFailed";
		}
	}
	
	public PageInfo getPageInfo(int currentPage, int totalCount) {
		int recordCountPerPage = 10;
		int naviCountPerPage = 10;
		int naviTotalCount;
		int startNavi;
		int endNavi;
		
		naviTotalCount = (int)((double)totalCount/recordCountPerPage + 0.9);
		startNavi = (((int)((double)currentPage/naviCountPerPage+0.9))-1) * naviCountPerPage + 1;
		endNavi = startNavi + naviCountPerPage -1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		PageInfo pi = new PageInfo(currentPage, recordCountPerPage, naviCountPerPage, naviTotalCount, startNavi, endNavi, naviTotalCount);
		return pi;
	}
	
	@RequestMapping(value="/notice/detail.do", method=RequestMethod.GET)
	public String showNoticeDetail(
			@RequestParam("noticeNo") int noticeNo
			, Model model
			) {
		try {
			Notice notice = service.selectOneByNo(noticeNo);
			if(notice != null) {
				model.addAttribute("notice", notice);
				return "notice/detail";
			} else {
				model.addAttribute("msg", "공지사항 세부정보 조회 실패");
				model.addAttribute("url", "/notice/noticeList.do");
				return "common/serviceFailed";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "공지사항 세부정보 조회 실패");
			model.addAttribute("url", "/notice/noticeList.do");
			return "common/serviceFailed";
		}
	}
	
	@RequestMapping(value="/notice/modify.do", method=RequestMethod.GET)
	public String showNoticeModify(
			@RequestParam("noticeNo") int noticeNo
			, Model model
			) {
		try {
			Notice notice = service.selectOneByNo(noticeNo);
			if(notice != null) {
				model.addAttribute("notice", notice);
				return "notice/modify";
			} else {
				model.addAttribute("msg", "공지사항 세부정보 조회 실패");
				model.addAttribute("url", "/notice/noticeList.do");
				return "common/serviceFailed";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "공지사항 세부정보 조회 실패");
			model.addAttribute("url", "/notice/noticeList.do");
			return "common/serviceFailed";
		}
		
	}
	@RequestMapping(value="/notice/delete.do", method=RequestMethod.GET)
	public String deleteNotice(
			@RequestParam("noticeNo") int noticeNo
			,Model model
			) {
		try {
			int result = service.deleteNotice(noticeNo);
			if(result > 0) {
				model.addAttribute("msg", "공지사항 삭제 성공");
				model.addAttribute("url", "/notice/noticeList.do");
				return "common/serviceSuccess";
			} else {
				model.addAttribute("msg", "공지사항 삭제 실패");
				model.addAttribute("url", "/notice/noticeList.do");
				return "common/serviceFailed";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "공지사항 삭제 실패");
			model.addAttribute("url", "/notice/noticeList.do");
			return "common/serviceFailed";
		}
	}
	
	@RequestMapping(value="/notice/insertNotice.do", method=RequestMethod.POST)
	public String insertNotice(
			@RequestParam("noticeSubject") String noticeSubject
			, @RequestParam("noticeContent") String noticeContent
			, Model model
			) {
		try {
			Notice notice = new Notice(noticeSubject, noticeContent);
			int result = service.insertNotice(notice);
			if(result > 0) {
				model.addAttribute("msg", "공지사항 작성 성공");
				model.addAttribute("url", "/notice/noticeList.do");
				return "common/serviceSuccess";
			} else {
				model.addAttribute("msg", "공지사항 작성 실패");
				model.addAttribute("url", "/notice/noticeList.do");
				return "common/serviceFailed";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "공지사항 작성 실패");
			model.addAttribute("url", "/notice/noticeList.do");
			return "common/serviceFailed";
		}
	}
	
	@RequestMapping(value="/notice/modify.do", method=RequestMethod.POST)
	public String modifyNotice(
			@RequestParam("noticeNo") int noticeNo
			,@RequestParam("noticeSubject") String noticeSubject
			,@RequestParam("noticeContent") String noticeContent
			, Model model
			) {
		try {
			Notice notice = new Notice(noticeNo, noticeSubject, noticeContent);
			int result = service.modifyNotice(notice);
			if(result > 0) {
				model.addAttribute("msg", "공지사항 수정 성공");
				model.addAttribute("url", "/notice/detail.do?noticeNo=" + noticeNo);
				return "common/serviceFailed";
			} else {
				model.addAttribute("msg", "공지사항 수정 실패");
				model.addAttribute("url", "/notice/detail.do?noticeNo=" + noticeNo);
				return "common/serviceFailed";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "공지사항 수정 실패");
			model.addAttribute("url", "/notice/noticeList.do");
			return "common/serviceFailed";
		}
	}
	
	@RequestMapping(value="/notice/search.do", method=RequestMethod.GET)
	public String searchNoticeList(
			@RequestParam("searchCondition") String searchCondition
			, @RequestParam("searchKeyword") String searchKeyword
			, @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage
			, Model model
			) {
		Map<String, String> sMap = new HashMap<String, String>();
		sMap.put("searchCondition", searchCondition);
		sMap.put("searchKeyword", searchKeyword);
		
		int totalCount = service.getListCount(sMap);
		PageInfo pInfo = this.getPageInfo(currentPage, totalCount);
		List<Notice> sList = service.searchNoticeByKeyword(pInfo, sMap);
		if(!sList.isEmpty()) {
			model.addAttribute("searchCondition", searchCondition);
			model.addAttribute("searchKeyword", searchKeyword);
			model.addAttribute("pInfo", pInfo);
			model.addAttribute("sList", sList);
			return "notice/search";
			
		} else {
			model.addAttribute("msg", "데이터 조회가 완료되지 않았습니다.");
			model.addAttribute("error", "공지사항 목록조회 실패");
			model.addAttribute("url", "/notice/noticeList.do");
			return "common/serviceFailed";
		}
	}
}
