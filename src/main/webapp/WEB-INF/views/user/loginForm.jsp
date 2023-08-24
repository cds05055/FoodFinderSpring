<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>로그인</title>
        <link rel="stylesheet" href="/resources/css/reset/reset.css">
        <link rel="stylesheet" href="/resources/css/login/login_form.css">
    </head>
    <body>
        <div id="container">
            <header></header>
            <main>
                <div id="main">
                    <div id="top-div">
                        <div class="main-box">
                            <img src="/resources/images/mainPage/main_logo.png" alt="메인로고" id="main-logo">
                            <p>FoodFinder</p>
                        </div>
                        <div id="sns-login-box">
                            <div id="naver-login-button" class="login-button">
                                <a href="https://nid.naver.com/nidlogin.login?mode=form&url=https://www.naver.com/" target="_blank">
                                    <img src="/resources/images/loginPage/naver-login.PNG" alt="네이버 로그인" width="710">
                                </a>
                            </div>
                            <div id="google-login-button" class="login-button">
                                <a href="https://accounts.google.com/InteractiveLogin/identifier?continue=https%3A%2F%2Fwww.google.com%2F%3Fhl%3Dko&ec=GAZAmgQ&ffgf=1&hl=ko&passive=true&ifkv=Af_xneH-ZGazOYHp2_gy7_jhibvGEpMiUUhJi8ZAgPi3F_zIuupJuN7hqa_Vz-VW_V2RLLmv9wvfBg&flowName=GlifWebSignIn&flowEntry=ServiceLogin" target="_blank">
                                    <img src="/resources/images/loginPage/google-login.PNG" alt="구글 로그인" width="708">
                                </a>
                            </div>
                            <div id="kakao-login-button" class="login-button">
                                <a href="https://accounts.kakao.com/login/?continue=https%3A%2F%2Fkauth.kakao.com%2Foauth%2Fauthorize%3Fproxy%3DeasyXDM_Kakao_flrqj376cx7_provider%26ka%3Dsdk%252F1.43.1%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fwww.goodchoice.kr%26origin%3Dhttps%253A%252F%252Fwww.goodchoice.kr%26response_type%3Dcode%26redirect_uri%3Dkakaojs%26state%3D82p1nq7a23oj7sl7u6ssx%26through_account%3Dtrue%26client_id%3Df6ffb505bb11d7cc3584d443ce35f704&talk_login=hidden#login" target="_blank">
                                    <img src="/resources/images/loginPage/kakao-login.png" alt="카카오 로그인" width="710">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div id="middle-div">
                        <h2>또는</h2>
                    </div>
                    <div id="bottom-div">
                        <form action="/user/login.do" method="post" id="input-login-box">
                            <div id="input-login-box-id">
                                <input type="text" name="user-id" required placeholder="이메일을 입력해주세요." id="input-id" class="user-input"><br>
                            </div>
                            <div id="input-login-box-pw">
                                <input type="password" name="user-pw" required placeholder="비밀번호를 입력해주세요." id="input-pw" class="user-input">
                            </div>
                            <div>
                                <input type="submit" value="로그인" id="input-login-button">
                            </div>
                            <div id="find-user-info-box">
                                <ul>
                                    <li>
                                        <a href="#">
                                            아이디 찾기<br>
                                        </a>
                                        <a href="#">
                                            비밀번호 찾기
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/user/terms.do">
                                            회원가입
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </form>
                    </div>
                </div>
            </main>
        </div>
        <script>
        const msg = '${msg}';
        if(msg != ''){
       	 	alert(msg);
        }
        </script>
    </body>
</html>