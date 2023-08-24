package kr.co.foodfinder.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.foodfinder.user.domain.User;
import kr.co.foodfinder.user.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping(value="/user/login.do", method=RequestMethod.GET)
	public String showLoginPage() {
		return "user/loginForm";
	}
	
	@RequestMapping(value="/user/terms.do", method=RequestMethod.GET)
	public String showRegisterTerms() {
		return "user/enrollTerms";
	}
	
	@RequestMapping(value="/user/register.do", method=RequestMethod.GET)
	public String showRegisterForm() {
		return "user/enrollForm";
	}
	
	@RequestMapping(value="/user/logout.do", method=RequestMethod.GET)
	public String logoutUser(
			HttpSession hSession
			, SessionStatus session
			, Model model) {
		if(hSession != null) {
			hSession.invalidate();
			return "redirect:/index.jsp";
		} else {
			model.addAttribute("msg", "로그아웃 실패");
			return "common/serviceFailed";
		}
	}

	@RequestMapping(value="/user/mypage.do", method=RequestMethod.GET)
	public String userMypage(
			@RequestParam("userId") String userId
			, Model model) {
		model.addAttribute("userId", userId);
		return "user/userEdit";
	}

	@RequestMapping(value="/user/info.do", method=RequestMethod.GET)
	public String userInfo() {
		return "user/userInfo";
	}
	
	@RequestMapping(value="/user/like.do", method=RequestMethod.GET)
	public String userLike() {
		return "user/userLikeShop";
	}
	
	@RequestMapping(value="/user/edit.do", method=RequestMethod.GET)
	public String userEdit() {
		return "user/userEdit";
	}
	
	@RequestMapping(value="/user/changOption.do", method=RequestMethod.GET)
	public String userchangOption(
			@RequestParam("userId") String userId
			, HttpSession session
			, Model model
			) {
		User user = service.selectOneById(userId);
		session.setAttribute("userId", user.getUserId());
		return "user/userOptionChange";
	}

	@RequestMapping(value="/user/register.do", method=RequestMethod.POST)
	public String registerUser(
			HttpServletRequest request
			, HttpServletResponse response
			, @RequestParam("user-id") String userId
			, @RequestParam("user-pw") String userPw
			, @RequestParam("user-nickname") String userNickname
			, @RequestParam("user-name") String userName
			, @RequestParam("user-age") int userAge
			, @RequestParam("user-gender") String userGender
			, @RequestParam("user-phone") String userPhone
			, Model model
			) {
		User user = new User(userId, userPw, userNickname, userName, userAge, userGender, userPhone);
		try {
			int result = service.insertUser(user);
			if(result > 0 ) {
				return "user/loginForm";
			} else {
				model.addAttribute("msg", "회원가입 실패");
				model.addAttribute("url", "/user/login.do");
				return "common/serviceFailed";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", e.getMessage());
			model.addAttribute("url", "/user/login.do");
			return "common/serviceFailed";
		}
	}
	
	@RequestMapping(value="/user/login.do", method=RequestMethod.POST)
	public String loginUser(
			HttpServletRequest request
			, HttpServletResponse response
			, @RequestParam("user-id") String userId
			, @RequestParam("user-pw") String userPw
			, HttpSession session
			, Model model) {
		
		try {
			User user = new User();
			user.setUserId(userId);
			user.setUserPw(userPw);
			User uOne = service.selectCheckLogin(user);
			if(uOne != null) {
				session.setAttribute("userId", uOne.getUserId());
				session.setAttribute("userNickname", uOne.getUserNickname());
				session.setAttribute("userName", uOne.getUserName());
				session.setAttribute("userPhone", uOne.getUserPhone());
				return "redirect: /index.jsp";
			} else {
				model.addAttribute("msg", "로그인 실패");
				model.addAttribute("url", "/user/login.do");
				return "common/serviceFailed";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "로그인 실패");
			return "common/serviceFailed";
		}
	}
	
	@RequestMapping(value="/user/userModify.do", method=RequestMethod.POST)
	public String userInfoModify(
			@RequestParam("userNickname") String userNickname
			, @RequestParam("userPw") String userPw
			, @RequestParam("userPhone") String userPhone
			, @RequestParam("userId") String userId
			, HttpSession session
			, Model model
			) {
		try {
			User user = new User(userId, userPw, userNickname, userPhone);
			int result = service.modifyUser(user);
			if(result > 0) {
				User uOne = service.selectOneById(userId);
				session.setAttribute("userId", uOne.getUserId());
				session.setAttribute("userNickname", uOne.getUserNickname());
				session.setAttribute("userName", uOne.getUserName());
				session.setAttribute("userPhone", uOne.getUserPhone());
				model.addAttribute("msg", "회원정보 수정 성공");
				model.addAttribute("url", "/user/info.do");
				return "common/serviceSuccess";
			} else {
				model.addAttribute("msg", "회원정보 수정 실패");
				model.addAttribute("url", "/user/info.do");
				return "common/serviceFailed";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "회원정보 수정 실패");
			model.addAttribute("url", "/user/userModify.do");
			return "common/serviceFailed";
		}
	}
	@RequestMapping(value="/user/changOption.do", method=RequestMethod.POST)
	public String userDelete(
			@RequestParam("quit-id") String userId
			, @RequestParam("quit-pw") String userPw
			, Model model
			) {
		try {
			User user = new User(userId, userPw);
			User uOne = service.selectCheckLogin(user);
			if(uOne != null) {
				// 성공
				int result = service.deleteUser(userId);
				if(result > 0) {
					model.addAttribute("msg", "회원탈퇴를 성공했습니다. 이용해주셔서 감사합니다.");
					model.addAttribute("url", "/user/logout.do");
					return "common/serviceSuccess";
				} else {
					model.addAttribute("msg", "회원탈퇴에 실패하였습니다. 다시 시도해주세요.");
					model.addAttribute("url", "/index.jsp");
					return "common/serviceFailed";
				}
			} else {
				// 입력한 비밀번호 오류
				model.addAttribute("msg", "회원 정보 찾기 실패 : 입력하신 비밀번호가 다릅니다.");
				model.addAttribute("url", "/user/mypage.do");
				return "common/serviceFailed";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "회원 정보 찾기 실패 : 관리자에게 문의 바랍니다.");
			model.addAttribute("url", "/user/mypage.do");
			return "common/serviceFailed";
		}
	}
	
}
