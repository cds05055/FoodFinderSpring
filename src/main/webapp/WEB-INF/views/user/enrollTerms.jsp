<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회원가입</title>
        <link rel="stylesheet" href="/resources/css/enroll/enrollTerms.css">
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
                <div class="main-box">
                    <img src="/resources/images/mainPage/main_logo.png" alt="메인로고" id="main-logo">
                    <p>FoodFinder</p>
                </div>
                <form action="" id="sign-form">
                    <div id="form-container">
                        <div id="all-check-box">
                            <label for="check-all">
                                <input type="checkbox" id="check-all">
                                <p>
                                    푸드파인더 이용약관(필수), 개인정보 수집 및 이용(필수), 위치 기반 서비스 <br>이용약관(필수), 이벤트 및 프로모션 혜택 수신 (선택)에 모두 동의 합니다.
                                </p>
                            </label>
                        </div>
                        <div id="terms-box">
                            <div class="check-box">
                                <label for="check1">
                                    <input type="checkbox" id="check1" class="check-button" required>
                                    <p>이용약관 동의(필수)</p>
                                    <textarea name="" id="">여러분을 환영합니다.
(주)F.F 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 (주)F.F 서비스의 이용과 관련하여 (주)F.F 서비스를 제공하는 (주)F.F 주식회사(이하 ‘(주)F.F’)와 이를 이용하는 (주)F.F 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 (주)F.F 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                                    </textarea>
                                </label>
                            </div>
                            <div class="check-box">
                                <label for="check2">
                                    <input type="checkbox" id="check2" class="check-button" required>
                                    <p>개인정보 수집 및 이용 동의(필수)</p>
                                    <textarea name="" id="">여러분을 환영합니다.
(주)F.F 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 (주)F.F 서비스의 이용과 관련하여 (주)F.F 서비스를 제공하는 (주)F.F 주식회사(이하 ‘(주)F.F’)와 이를 이용하는 (주)F.F 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 (주)F.F 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                                    </textarea>
                                </label>
                            </div>
                            <div class="check-box">
                                <label for="check3">
                                    <input type="checkbox" id="check3" class="check-button" required>
                                    <p>위치 기반 서비스 이용 약관 동의(필수)</p>
                                    <textarea name="" id="">여러분을 환영합니다.
(주)F.F 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 (주)F.F 서비스의 이용과 관련하여 (주)F.F 서비스를 제공하는 (주)F.F 주식회사(이하 ‘(주)F.F’)와 이를 이용하는 (주)F.F 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 (주)F.F 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                                    </textarea>
                                </label>
                            </div>
                            <div class="check-box">
                                <label for="check4">
                                    <input type="checkbox" id="check4" class="check-button">
                                    <p>이벤트 및 프로모션 혜택 수신 동의(선택)</p>
                                    <textarea name="" id="">여러분을 환영합니다.
(주)F.F 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 (주)F.F 서비스의 이용과 관련하여 (주)F.F 서비스를 제공하는 (주)F.F 주식회사(이하 ‘(주)F.F’)와 이를 이용하는 (주)F.F 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 (주)F.F 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                                    </textarea>
                                </label>
                            </div>
                        </div>
                        <div id="btn-box">
                            <button type="button" id="back-btn" class="ok-btn">비동의</button>
                            <button type="button" id="next-btn" class="ok-btn">동의</button>
                        </div>
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
        <script src="/resources/js/enroll/enrollTerms.js"></script>
    </body>
</html>