<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Main</title>
        <link rel="stylesheet" href="/resources/css/reset/reset.css">
        <link rel="stylesheet" href="/resources/css/main/main_page.css">
        
    </head>
    <body>
        <div id="container">
            <header>
                <div id="logo-box">
                    <a href="/index.jsp">
                        <img src="/resources/images/mainPage/main_logo.png" alt="메인 로고" id="main-logo">
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
<%-- <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include> --%>
                <c:if test="${userId eq null }">
	                <div id="user-log-sign">
	                        <div id="userId-category" class="category"><a href="/user/login.do">로그인</a></div>
	                        <div id="sign-category" class="category"><a href="/user/terms.do">회원가입</a></div>
	                </div>
                </c:if>
                <c:if test="${userId ne null }">
                	<div id="user-login">
	                    <div id="user-info-box">
	                        <div id="user-profile">
	                            <img src="/resources/images/userIcon/circle-user.png" alt="유저 프로필 이미지" width="80px" height="80px">
	                        </div>
	                        <div id="user-nick-logout">
	                            <div id="user-info">
	                                <a href="/user/mypage.do?userId=${userId }">${userNickname } 님</a>
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
                </c:if>
            </header>

            <main>
                <div id="map-position">
                    <div id="map-Bg">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d1581.198499951463!2d126.9841692083382!3d37.569268299320406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1z7KKF6rCBIOq3vOyymCDrp5vsp5E!5e0!3m2!1sko!2skr!4v1685491310545!5m2!1sko!2skr" 
                        style="border:0;" allowfullscreen="" loading="lazy" 
                        referrerpolicy="no-referrer-when-downgrade" id="map">
                        </iframe>
                    </div>
                </div>
                <div id="food-list">
                    <h1>주변 맛집 베스트</h1>
                    <div id="restaurant1" class="restaurant-info">
                        <a href="https://www.google.com/maps/place/%EC%9A%B0%EC%9C%A1%EB%A9%B4%EA%B4%80+%EC%B2%AD%EA%B3%84%EC%B2%9C%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357ca3edac055b65:0x795e83a813538895!8m2!3d37.5685408!4d126.9861247!16s%2Fg%2F11fm3y62xn?hl=ko-KR&entry=ttu" target="_blank">
                            <img src="/resources/images/mainPage/beef-noodle.PNG" alt="우육면">
                            <h2>우육면관 청계천점</h2>
                            <ul>
                                <li>리뷰점수 : 4.8</li>
                                <li>운영시간 : 11:00 ~ 20:00</li>
                                <li>브레이크 타임 : 14:30 ~ 17:00</li>
                                <li>중식당</li>
                            </ul>
                            <div class="info-break">
                                브레이크 타임
                            </div>
                        </a>
                    </div>
                    <div id="restaurant2" class="restaurant-info">
                        <a href="https://www.google.com/maps/place/%EC%BA%A0%ED%95%91%EA%B7%B8%EB%A6%AC%EB%93%A4+210%EB%8F%84%EC%94%A8/data=!3m1!4b1!4m6!3m5!1s0x357ca3a53326183b:0x911524f9ce1714!8m2!3d37.5696606!4d126.9845446!16s%2Fg%2F11qgj7c1k1?hl=ko-KR&entry=ttu" target="_blank">
                            <img src="/resources/images/mainPage/camping.jpg" alt="캠핑그리들 210도씨">
                            <h2>캠핑그리들 210도씨</h2>
                            <ul>
                                <li>리뷰점수 : 4.58</li>
                                <li>운영시간 : 11:30 ~ 22:00</li>
                                <li>브레이크 타임 : 없음</li>
                                <li>한식당</li>
                            </ul>
                            <div class="info-close">
                                휴무
                            </div>
                        </a>
                    </div>
                    <div id="restaurant3" class="restaurant-info">
                        <a href="https://www.google.com/maps/place/%EA%B0%93%EB%8D%B4%EC%8A%A4%EC%8B%9C+%EC%A2%85%EB%A1%9C%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357ca2e8bd68ec11:0x6ee78e54814af2d9!8m2!3d37.5694101!4d126.9855719!16s%2Fg%2F119v4sqjc?hl=ko-KR&entry=ttu" target="_blank">
                            <img src="/resources/images/mainPage/sushi.jpg" alt="스시">
                            <h2>갓덴스시 종로점</h2>
                            <ul>
                                <li>리뷰점수 : 4.43</li>
                                <li>운영시간 : 11:00 ~ 21:30</li>
                                <li>브레이크 타임 : 없음</li>
                                <li>일식당</li>
                            </ul>
                            <div class="info-open">
                                영업중
                            </div>
                        </a>
                    </div>
                    <div id="restaurant4" class="restaurant-info">
                        <a href="https://www.google.com/maps/place/%EC%9D%BC%ED%8E%B8%EB%93%B1%EC%8B%AC/data=!3m1!4b1!4m6!3m5!1s0x357ca2e8cf2cf5f5:0x160085726c793888!8m2!3d37.5691164!4d126.9846546!16s%2Fg%2F11f6kvfqnc?hl=ko-KR&entry=ttu" target="_blank">
                            <img src="/resources/images/mainPage/beef-steak.PNG" alt="소고기">
                            <h2>일편등심</h2>
                            <ul>
                                <li>리뷰점수 : 4.4</li>
                                <li>운영시간 : 16:30 ~ 23:00</li>
                                <li>브레이크 타임 : 없음</li>
                                <li>한식당</li>
                            </ul>
                            <div class="info-close">
                                휴무
                            </div>
                        </a>
                    </div>
                    <h1>주변 카페 베스트</h1>
                    <div id="cafe1" class="restaurant-info">
                        <a href="https://www.google.co.kr/maps/place/%EC%B9%B4%ED%8E%98+%EC%A2%85%EB%A1%9C%EC%8B%9C%EC%9E%A5/data=!3m1!4b1!4m6!3m5!1s0x357ca3a0d5a87f69:0x9e6659597347fec9!8m2!3d37.569349!4d126.9836087!16s%2Fg%2F11hdv3h8cr?hl=ko&entry=ttu" target="_blank">
                            <img src="/resources/images/mainPage/cafe-jongnosijang.PNG" alt="카페 종로시장">
                            <h2>카페 종로시장</h2>
                            <ul>
                                <li>리뷰점수 : 4.4</li>
                                <li>운영시간 : 10:00 ~ 22:00</li>
                                <li>카페</li>
                            </ul>
                            <div class="info-open">
                                영업중
                            </div>
                        </a>
                    </div>
                    <div id="cafe2" class="restaurant-info">
                        <a href="https://www.google.co.kr/maps/place/%ED%8F%B4%EB%A3%A8%EC%9D%B4%ED%8A%B8/data=!3m1!4b1!4m6!3m5!1s0x357ca2e896701985:0x926c20d84c2a83e0!8m2!3d37.5696282!4d126.9853742!16s%2Fg%2F11f1l326fz?hl=ko&entry=ttu" target="_blank">
                            <img src="/resources/images/mainPage/foluite.jpg" alt="카페 폴루이트">
                            <h2>카페 폴루이트</h2>
                            <ul>
                                <li>리뷰점수 : 4.5</li>
                                <li>운영시간 : 12:00 ~ 23:00</li>
                                <li>카페</li>
                            </ul>
                            <div class="info-open">
                                영업중
                            </div>
                        </a>
                    </div>
                    <div id="cafe3" class="restaurant-info">
                        <a href="https://www.google.co.kr/maps/place/%EC%B9%B4%ED%8E%98+%EA%B2%B0/data=!3m1!4b1!4m6!3m5!1s0x357ca331454aa123:0x335a9edd6736239e!8m2!3d37.571908!4d126.98353!16s%2Fg%2F11h1vdh3hp?hl=ko&entry=ttu" target="_blank">
                            <img src="/resources/images/mainPage/cafe-gyule.PNG" alt="카페 결">
                            <h2>카페 결</h2>
                            <ul>
                                <li>리뷰점수 : 4.5</li>
                                <li>운영시간 : 10:00 ~ 21:00</li>
                                <li>카페</li>
                                <div class="info-close">
                                    영업종료
                                </div>
                            </ul>
                        </a>
                    </div>
                    <div id="cafe4" class="restaurant-info">
                        <a href="https://www.google.co.kr/maps/place/%ED%8F%B4+%EB%B0%94%EC%85%8B+%EC%A2%85%EA%B0%81%EC%97%AD%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357ca2ebfd9b483b:0x900796533a9958f1!8m2!3d37.570845!4d126.9825587!16s%2Fg%2F11ckq_7_6c?hl=ko&entry=ttu" target="_blank">
                            <img src="/resources/images/mainPage/paulbassett.PNG" alt="카페 폴 바셋">
                            <h2>폴 바셋</h2>
                            <ul>
                                <li>리뷰점수 : 4.1</li>
                                <li>운영시간 :7:00 ~ 21:00</li>
                                <li>카페</li>
                            </ul>
                            <div class="info-close">
                                영업종료
                            </div>
                        </a>
                    </div>
                </div>
            </main>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
<!--             <footer> -->
<!--                 <div id="footer-img-box"> -->
<!--                     <img src="/resources/images/mainPage/main_logo.png" alt="메인 로고" id="footer-logo"> -->
<!--                     <p>Food Finder</p> -->
<!--                 </div> -->
<!--                 <div id="terms"> -->
<!--                     (주) F.F는 통신판매 중개자로서 통신판매의 당사자가 아니며 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다. <br><br> -->
<!--                     (주) F.F가 소유/운영/관리하는 웹사이트 및 앱 내의 상품/판매자/이벤트 정보, 디자인 및 화면의 구성, UI를 포함하여 일체의 콘텐츠에 대한 무단 복제, -->
<!--                     배포, 방송 또는 전송, 스크래핑 등의 행위는 저작권법 및 콘텐츠산업 진흥법 등 관련 법령에 의하여 엄격히 금지 됩니다. -->
<!--                 </div> -->
<!--                 <div id="company-info"> -->
<!--                     <ul> -->
<!--                         <li>대표이사 : 홍길동</li> -->
<!--                         <li>주소 : 서울시 중구 남대문로</li> -->
<!--                         <li>전화번호 : 02-1234-5678</li> -->
<!--                         <li>사업체명 : (주)F.F</li> -->
<!--                         <li>E-mail : hgd123@gmail.com</li> -->
<!--                     </ul> -->
<!--                 </div> -->
<!--                 <div id="footer-nav"> -->
<!--                     <ul id="footer-nav-info"> -->
<!--                         <li><a href="#">회사소개</a></li> -->
<!--                         <li><a href="#">인재채용</a></li> -->
<!--                         <li><a href="#">이용약관</a></li> -->
<!--                         <li><a href="#">고객센터</a></li> -->
<!--                         <li><a href="#">개인정보처리방침</a></li> -->
<!--                         <li><a href="#">위치기반서비스이용약관</a></li> -->
<!--                         <li><a href="#">제휴문의</a></li> -->
<!--                     </ul> -->
<!--                 </div> -->
<!--             </footer> -->
        </div>
        <div id="up">
            <a href="#">
                <img src="/resources/images/userIcon/orange-arrow-icon.png" alt="업 아이콘" id="up-icon">
            </a>
        </div>
    <script src="/resources/js/main/mainPage.js"></script>
    </body>
</html>