<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<style type="text/css">

	label {
		width:160px;
		display: inline-block;
		float: left;
	}
	
	#button{
		text-align:center;
	}

</style>
<script type = "text/javascript">

	function check_ok(){
		if (document.reg_frm.name.value.length ==0) {
			alert("이름을 작성해주세요.");
			reg_frm.name.focus();
			return false;
		}
		if (document.reg_frm.jumin_1.value.length !=6) {
			alert("주민번호 앞자리 6글자입니다..");
			reg_frm.jumin_1.focus();
			return false;
		}
		if (document.reg_frm.jumin_2.value.length !=7) {
			alert("주민번호 뒷자리 7글자입니다..");
			reg_frm.jumin_2.focus();
			return false;
		}
		if (document.reg_frm.id.value.length ==0) {
			alert("아이디를 작성해주세요.");
			reg_frm.id.focus();
			return false;
		}
		if (document.reg_frm.id.value.length < 4) {
			alert("아이디는 4글자 이상이어야합니다..");
			reg_frm.id.focus();
			return false;
		}
		if (document.reg_frm.pwd.value == "") {
			alert("패스워드는 반드시 입력해야합니다..");
			reg_frm.pwd.focus();
			return false;
		}
		if (documnet.reg_frm.pwd.value != document.reg_frm.pwd_re.value) {
			alert("패스워드가 일치하지 않습니다.");
			reg_frm.pwd_re.focus();
			return false;
		}
		
		return true;
	}

</script>

</head>
<body>

<form name = "reg_frm" method = "get" action="Test02Servlet">
	<label for = "name"> 이름 </label><span style="color:red;">*</span>
	<input type = "text" id= "name" name="name"> <br>
	
	<label> 주민등록번호 </label><span style="color:red;">*</span>
	<input type = "text" name="jumin_1"> - 
	<input type = "password" name="jumin_2"> <br>
	
	<label for = "id"> 아이디 </label><span style="color:red;">*</span>
	<input type = "text" id= "id" name="id"> <br>
	
	<label for = "pwd"> 비밀번호 </label><span style="color:red;">*</span>
	<input type = "password" id= "pwd" name="pwd"> <br>
	
	<label for = "pwd_re"> 비밀번호 확인 </label><span style="color:red;">*</span>
	<input type = "password" id= "pwd_re" name="pwd_re"> <br>
	
	<label for = "email"> 이메일 </label> &nbsp;
	<input type = "text" name="email"> @
	<select name="emailaddr">
		<option value ="">직접입력</option>
		<option value ="naver.com">naver.com</option>
		<option value ="daum.net">daum.net</option>
		<option value ="gmail.com">gmail.com</option>
	</select><br>
	
	<label for="zip">우편번호</label> &nbsp;
	<input type="text" id="zip" name = "zip"><br>
	
	<label for="addr1"> 주소</label> &nbsp;
	<input type="text" id="addr1" name="addr1">
	<input type="text" name="addr2"><br>
	
	<label for="phone">핸드폰번호</label> &nbsp;
	<input type="tel" id="phone" name ="phone"><br>
	
	<label for="job">직업</label> &nbsp;
	<select id="job" name="job" size="1">
		<option value="학생">학생</option>
		<option value="언론">언론</option>
		<option value="공무원">공무원</option>
		<option value="서비스업">서비스업</option>
		<option value="교육">교육</option>
	
	</select><br>
	
	<label for ="chk_mail">SMS 수신여부</label> &nbsp;
	<input type ="radio" id="chk_mail" name="chk_mail" checked>수신
	<input type ="radio" id="chk_mail" name="chk_mail">수신거부<br>
	
	<label for="interest">관심분야</label> &nbsp;
		<input type="checkbox" id="interest" name="interest" value="아메리카노">아메리카노
		<input type="checkbox" id="interest" name="interest" value="에스프레소">에스프레소
		<input type="checkbox" id="interest" name="interest" value="카페라떼">카페라떼
		<input type="checkbox" id="interest" name="interest" value="카푸치노">카푸치노
		<input type="checkbox" id="interest" name="interest" value="핸드드립">핸드드립
		<input type="checkbox" id="interest" name="interest" value="로스팅">로스팅

	<div id="button">
		<input type ="submit" value="회원가입" onclick="return check_ok()">
		<input type = "reset" value="취소">
	</div>	
	

</form>

</body>
</html>