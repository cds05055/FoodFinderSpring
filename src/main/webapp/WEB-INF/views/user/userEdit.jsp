<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>마이페이지</title>
        <link rel="stylesheet" href="/resources/css/user/userEdit.css">
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
                                    <a href="/user/edit.do">${sessionScope.userNickname} 님</a>
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
                                <a href="/user/info.do">
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
                        <h1 style="margin-top: 5px;">다녀간 점포</h1>
                        <p><a href="#">더보기</a></p>
                        <div id="shop-box">
                            <div id="shop1" class="shop">
                                <img src="/resources/images/mainPage/beef-noodle.PNG" alt="우육면" class="shop-img">
                                <h2>우육면관 청계천점</h2>
                                <p>내가 준 리뷰 점수 : 4.8</p>
                                <p>내가 작성한 리뷰</p>
                            </div>
                            <div id="shop2" class="shop">
                                <img src="/resources/images/mainPage/sushi.jpg" alt="스시" class="shop-img">
                                <h2>갓덴스시 종로점</h2>
                                <p>내가 준 리뷰 점수 : 4.5</p>
                                <p>내가 작성한 리뷰</p>
                            </div>
                            <div id="shop3" class="shop">
                                <img src="/resources/images/mainPage/foluite.jpg" alt="카페 폴루이트" class="shop-img">
                                <h2>카페 폴루이트</h2>
                                <p>내가 준 리뷰 점수 : 4.0</p>
                                <p>내가 작성한 리뷰</p>
                            </div>
                        </div>
                        <div id="bottom-div">
                            <h1 id="small-title" >작성한 글</h1>
                            <p><a href="#">더보기</a></p>
                            <div id="write-box">
                                <div id="review-box" class="shop">
                                    <img src="/resources/images/userIcon/comment-alt.png" alt="리뷰" class="shop-img" style="margin-top: 30px;">
                                    <h2 style="margin-top: 20px;">작성한 리뷰(3)</h2>
                                </div>
                                <div id="qna-box" class="shop">
                                    <img src="/resources/images/userIcon/messages-question.png" alt="문의" class="shop-img" style="margin-top: 30px;">
                                    <h2 style="margin-top: 20px;">1:1문의(2)</h2>
                                </div>
                                <div id="report-box" class="shop">
                                    <img src="/resources/images/userIcon/light-emergency-on.png" alt="신고" class="shop-img">
                                    <h2 style="margin-top: 28px;">신고(4)</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="user-write">
                        
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