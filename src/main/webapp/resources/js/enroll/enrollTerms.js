
// 전체 체크 버튼 체크 시 아래 체크 리스트 전부 체크
const ChkAll = document.querySelector("#check-all");
ChkAll.addEventListener("change", (e) => {
    let agreeChk = document.querySelectorAll(".check-button");
    for(let i = 0; i < agreeChk.length; i++){
        agreeChk[i].checked = e.target.checked;
}
});

// ChkAll이나 필수 체크 리스트가 체크 되어 있을 때 동의 버튼 누르면 회원 가입 개인정보 입력 창으로 가기
function nextpage() {
    window.location.href = "/user/register.do";
//    /WEB-INF/views/portfolio/jsp/enroll/enrollForm.jsp
}
document.querySelector("#next-btn").addEventListener("click", (e) => {
    // ChkAll이 체크 되어 있지 않고 필수 체크 리스트만 체크 되어 있어도 회원가입 개인정보 입력 창으로 이동
    const check1 = document.querySelector("#check1");
    const check2 = document.querySelector("#check2");
    const check3 = document.querySelector("#check3");
    if (ChkAll.checked || (check1.checked && check2.checked && check3.checked)) {
        nextpage();
    } else{
		alert("필수 체크박스를 전부 체크해주세요.");
	}
});