function CheckAddCoordi() {

	var coordiId = document.getElementById("coordiId");
	var name = document.getElementById("name");

	
	// 상품아아디 체크
	if (!check(/^C[0-9]{4,11}$/, coordiId,
			"\nC와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 C로 시작하세요"))
		return false;
	// 상품명 체크
	if (name.value.length < 2 || name.value.length > 10) {
		alert("최소 2자에서 최대 10자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newCoordi.submit()
}
