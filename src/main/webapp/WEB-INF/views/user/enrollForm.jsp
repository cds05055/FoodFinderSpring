<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회원가입(정보입력)</title>
        <link rel="stylesheet" href="/resources/css/enroll/enrollForm.css">
        <link rel="stylesheet" href="/resources/css/reset/reset.css">
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
                        <div id="more-category" class="category">
                            더보기
                            <div id="more-list">
                                <ul id="more-menu">
                                    <li><a href="#">공지사항</a></li>
                                    <li><a href="#">이벤트</a></li>
                                    <li><a href="#">1:1문의</a></li>
                                </ul>
                            </div>
                        </div>
                </div>
                <div id="user-log-sign">
                        <div id="userId-category" name="user-id" class="category"><a href="/user/login.do">로그인</a></div>
                        <div id="sign-category" name="user-pw" class="category"><a href="/user/terms.do">회원가입</a></div>
                </div>
            </header>

            <main>
                <form id="sign-form" action="/user/register.do" method="post">
                    <div id="radio-btn">
                        <label for="normal-user">
                            <input type="radio" class="radio" name="user-category" id="normal-user" value="normal" checked> 일반 사용자<br>
                        </label>
                        <label for="admin-user">
                            <input type="radio" class="radio" name="user-category" id="admin-user" value="admin"> 점포 관리자<br>
                        </label>
                    </div>
                    <div id="id-pw">
                        <h3><label for="user-id">아이디(이메일)</label></h3>
                        <input type="email" id="user-id" name="user-id" class="int" maxlength="20" required placeholder="@gmail.com">
                        <h3><label for="user-pw">비밀번호</label></h3>
                        <input type="password" id="user-pw" name="user-pw" class="int" maxlength="16" required>
                        <h3><label for="user-pw2">비밀번호 확인</label></h3>
                        <input type="password" id="user-pw2" name="user-pw2" class="int" maxlength="16" required>
                    </div>
                    <div id="user-info">
                        <h3><label for="user-nickname">닉네임</label></h3>
                        <input type="text" id="user-nickname" name="user-nickname" class="int" required>
                        <h3><label for="user-name">이름</label></h3>
                        <input type="text" id="user-name" name="user-name" class="int" required>
                        <h3><label for="user-age">나이</label></h3>
                        <input type="text" id="user-age" name="user-age" class="int" placeholder="만 나이로 적어주세요" required>
                        <h3><label for="user-gender">성별</label></h3>
                        <select id="user-gender" name="user-gender" class="int">
                            <option value="M" selected>남자</option>
                            <option value="F">여자</option>
                        </select>
                        <h3><label for="user-phone">전화번호</label></h3>
                        <input type="tel" id="user-phone" name="user-phone" class="int" placeholder="- 빼고 입력해주세요." required><br>
                        <input type="text" id="number4" name="number4" placeholder="인증번호 입력" required>
                        <button class="btn-box" id="certification">인증번호 전송</button><br>
                        <button class="btn-box" id="re-send">재전송</button>
                        <button class="btn-box" id="confirm">인증완료</button><br>
                        <input type="submit" class="btn-box" name="" id="signup" value="가입하기">
                    </div>
                </form>
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