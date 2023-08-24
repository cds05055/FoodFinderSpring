<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>개인정보수정</title>
        <link rel="stylesheet" href="/resources/css/reset/reset.css">
        <link rel="stylesheet" href="/resources/css/user/userInfo.css">
    </head>
    <body>
        <div id="container">
            <header>
                <div id="logo-box">
                    <a href="/index.jsp">
                        <img src="/resources/images/mainPage/main_logo.png" alt="메인 로고" id="hd-main-logo">
                    </a>
                </div>
                <div id="search">
                    <div id="search-box">
                        <img src="/resources/images/userIcon/search-icon.png" alt="검색 아이콘" id="search-icon">
                        <input type="text" id="input-search">
                    </div>
                </div>
                <div id="id-category">
                        <div id="food-category" class="category"><a href="#">식사</a></div>
                        <div id="dessert-category" class="category"><a href="#">디저트</a></div>
                        <div id="more-category" class="category">더보기
                            <div id="more-list">
                                <ul id="more-menu">
                                    <li>공지사항</li>
                                    <li>이벤트</li>
                                    <li>1:1문의</li>
                                </ul>
                            </div>
                        </div>
                </div>
                <div id="user-login">
                        <div id="user-info-box">
                            <div id="user-profile">
                                <img src="/resources/images/userIcon/circle-user.png" alt="유저 프로필 이미지" width="80px" height="80px">
                            </div>
                            <div id="user-nick-logout">
                                <div id="user-info">
                                    ${sessionScope.userNickname} 님
                                </div>
                                <div id="logout">
                                    <a href="/user/logout.do">
                                        로그아웃 >
                                    </a>
                                </div>
                            </div>
                            <div id="user-alarm">
                                <a href="#">
                                    <img src="/resources/images/userIcon/bell-ring.png" alt="알람" width="80px" height="80px">
                                </a>
                            </div>
                        </div>
                </div>
            </header>

            <main>
                <div id="user-info-menu">
                    <div id="info-menu">
                        <div id="profile-img-box">
                            <div id="profile-img">
                                <img src="/resources/images/userIcon/circle-user.png" alt="프로필 사진" width="100px" height="100px">
                            </div>
                            <div id="info-edit">
                                <p>${sessionScope.userNickname} 님, 안녕하세요.</p>
                                <a href="/user/info.do?user-id=${userId }">
                                    <div id="info-edit-btn">
                                        회원 정보 수정
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div id="line"></div>
                        <div id="user-edit-list">
                            <ul>
                                <li><a href="/user/like.do">나의 관심점포</a></li>
                                <li><a href="/user/edit.do">내 리뷰 관리</a></li>
                                <li><a href="/notice/noticeList.do">공지사항</a></li>
                                <li><a href="/user/changOption.do?userId=${sessionScope.userId }">환경설정</a></li>
                                <li><a href="#">고객센터</a></li>
                                <li><a href="#">신고</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div id="user-info-edit-box">
                    <div id="user-shop">
                        <form action="/user/userModify.do" method="post">
                            <div id="input-div">
                                <div id="name-box" class="box">
                                    <span class="p-tag">이름</span><div id="name-div" name="userName" class="non-change">${sessionScope.userName }</div>
                                </div>
                                <div id="nickname-box" class="box">
                                    <span class="p-tag">닉네임</span><input type="text" name="userNickname" value="${sessionScope.userNickname }" id="nickname-inp" class="change"></input>
                                </div>
                                <div id="email-box" class="box">
                                    <span class="p-tag">이메일(아이디)</span><input type="text" id="email-div" name="userId" value="${sessionScope.userId }" class="non-change" readonly></input>
                                </div>
                                <div id="pw-box" class="box">
                                    <span class="p-tag">현재 비밀번호</span><input type="password" name="user-pw-now" id="pw-inp" class="change" placeholder="현재 사용중이신 비밀번호를 입력해주세요."></input>
                                </div>
                                <div id="newPw-box" class="box">
                                    <span class="p-tag">비밀번호 변경</span><input type="password" name="userPw" id="new-pw" class="change" placeholder="변경하실 비밀번호를 입력해주세요."></input>
                                </div>
                                <div id="rePw-box" class="box" style="margin-bottom: 4px;">
                                    <span class="p-tag">비밀번호 변경 확인</span><input type="password" name="user-pw-ck" id="pw-re" class="change" placeholder="비밀번호를 한 번 더 입력해주세요."></input>
                                </div>
<!--                                 <input type="button" id="pw-btn" value="변경하기"></input><br> -->
                                <div id="phone-box" class="box">
                                    <span class="p-tag">휴대폰 번호</span><input type="text" id="phone-div" name="userPhone" class="change" value="${sessionScope.userPhone }"></input>
<!--                                     <div id="tel-btn">인증완료</div> -->
                                </div>
                            </div>
                            <div id="btn-div">
                                <input type="button" value="취소" id="cancel" class="btn">
                                <input type="submit" value="적용" id="submit" class="btn">
                            </div>
                        </form>
                    </div>
                </div>
            </main>

            <footer>
                <div id="footer-nav">
                    <ul id="footer-nav-info">
                        <li><a href="#">회사소개</a></li>
                        <li><a href="#">인재채용</a></li>
                        <li><a href="#">이용약관</a></li>
                        <li><a href="#">고객센터</a></li>
                        <li><a href="#">개인정보처리방침</a></li>
                        <li><a href="#">위치기반서비스이용약관</a></li>
                        <li><a href="#">제휴문의</a></li>
                    </ul>
                </div>
            </footer>
        </div>

        <script src="/resources/js/main/mainPage.js"></script>
    </body>
</html>