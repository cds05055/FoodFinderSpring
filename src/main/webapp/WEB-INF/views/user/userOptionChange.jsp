<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>개인설정 변경</title>
        <link rel="stylesheet" href="/resources/css/user/userOption.css">
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
                        <div id="private-div" class="option-div">
                            <div id="private-box" class="title-box">개인설정</div>
                            <div id="font-div" class="box-div">
                                <p class="font">글씨 사이즈</p>
                                <select name="" id="font-size-box">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                    <option>13</option>
                                    <option>14</option>
                                </select>
                            </div>
                            <form action="" id="lang-form" class="form">
                                <div class="box-div">
                                    <p class="font">언어선택</p>
                                    <div>
                                        <select name="" id="language">
                                            <option>한국어</option>
                                            <option>English</option>
                                        </select>
                                        <button class="ok-btn">적용</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div id="alarm-div" class="option-div">
                            <div id="alarm-box" class="title-box">서비스 알림</div>
                            <div id="review1" class="box-div">
                                <p class="font">리뷰 작성 요청 알림</p>
                                <div class="on-off-div">
                                    <input type="radio" name="switch1" id="on1" checked>
                                    <label for="on1">On</label>
                                    <input type="radio" name="switch1" id="off1">
                                    <label for="off1">Off</label>
                                </div>
                            </div>
                            <div id="review2" class="box-div">
                                <p class="font">리뷰 답글 작성 알림</p>
                                <div class="on-off-div">
                                    <input type="radio" name="switch2" id="on2" checked>
                                    <label for="on2">On</label>
                                    <input type="radio" name="switch2" id="off2">
                                    <label for="off2">Off</label>
                                </div>
                            </div>
                            <div class="box-div">
                                <p class="font">리뷰 추천 알림</p>
                                <div class="on-off-div">
                                    <input type="radio" name="switch3" id="on3" checked>
                                    <label for="on3">On</label>
                                    <input type="radio" name="switch3" id="off3">
                                    <label for="off3">Off</label>
                                </div>
                            </div>
                        </div>
                        <div id="benefits-div" class="option-div">
                            <div id="benefits-box" class="title-box">혜택알림</div>
                            <div id="event-div">
                                <p class="font">이벤트 알림</p>
                                <div class="on-off-div">
                                    <input type="radio" name="switch4" id="on4" checked>
                                    <label for="on4">On</label>
                                    <input type="radio" name="switch4" id="off4">
                                    <label for="off4">Off</label>
                                </div>
                            </div>
                            <div class="box-div">
                                <p class="font">주변 가게 추천 알림</p>
                                <div class="on-off-div">
                                    <input type="radio" name="switch5" id="on5" checked>
                                    <label for="on5">On</label>
                                    <input type="radio" name="switch5" id="off5">
                                    <label for="off5">Off</label>
                                </div>
                            </div>
                        </div>

                        <div id="quit-div" class="option-div">
                            <div id="quit-box" class="title-box">회원 탈퇴</div>
                            <div id="userQuit-box">
                                <h1>회원탈퇴</h1>
                                <p id="p-pw" class="font">비밀번호 입력</p>
                                <form action="/user/changOption.do" method="post" id="quit-form" class="form">
                                	<input type="hidden" name="quit-id" value="${sessionScope.userId }">
                                    <input type="password" id="quit-pw" name="quit-pw" placeholder="비밀번호를 입력해주세요" required>
                                    <button id="quit-btn" onclick="checkDelete();">탈퇴</button>
                                    <p id="quit-terms">
                                        ※회원 탈퇴 시 같은 명의로 3개월 내에 제가입이 불가능 합니다. <br>
                                        자세한 내용은 <a href="#" id="aTag">여기</a>를 확인해주세요.
                                    </p>
                                </form>
                            </div>
                        </div>
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
        <script>
        	function checkDelete(){
        		const userPw = '${sessionScop.userPw}';
        		if(confirm("정말 탈퇴하시겠습니까?")){
        			location.href = "/user/changOption.do?quit-pw="+userPw;
        		}
        	}
        </script>
    </body>
</html>