<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <title>Welcome</title>
</head>
<body>

    <%@ include file="menu.jsp" %>
    <img src="./resources/resource/welcome.jpg" style="width: 100%">

    <%--센터에  출력되는  글  --%>
    <div class="container">
        <div class="text-center">
            <br><br><br>
            <h1>Welcome to COORDI</h1>
            <%response.setIntHeader("Refresh", 10);%>
            <c:set var="ymd" value="<%=new java.util.Date()%>" />
            <fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd" />
        </div>
    </div>

    <div class="container px-4 py-5" id="custom-cards">

        <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
            <div class="col">
                <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('./resources/resource/wedding.png');">
                    <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                        <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Wedding Look</h3>
                        <a href="wedding.jsp" class="nav-link fw-bold text-center" style="color: white">CLICK</a>
                        <ul class="d-flex list-unstyled mt-auto"></ul>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('./resources/resource/date.png');">
                    <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                        <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Date Look</h3>
                        <a href="date.jsp" class="nav-link fw-bold text-center" style="color: white">CLICK</a>
                        <ul class="d-flex list-unstyled mt-auto"></ul>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('./resources/resource/party.png');">
                    <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
                        <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Party Dress</h3>
                        <a href="party.jsp" class="nav-link fw-bold text-center" style="color: white">CLICK</a>
                        <ul class="d-flex list-unstyled mt-auto"></ul>
                    </div>
                </div>
            </div>
        </div>
        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading fw-normal lh-1">모자로 스타일과 체온 두 마리 토끼 잡기  <span class="text-muted">Style and body temperature with a hat. Catch two rabbits</span></h2>
                <p class="lead">모자 하나만으로도 체온이 2도 상승한다는 사실, 아시나요? 뚝뚝 떨어지는 기온에도 걱정 마세요! 이유미의 큐트한 비니 패션을 참고하면 된답니다.
                    컬러 배색으로 포인트를 준 비니와 체크 패턴의 조화가 사랑스럽죠? 오후에는 다행히 기온이 지난주와 같이 상승할 예정이니 도톰한 아우터를 챙겨 입고 벗을 수 있도록 준비하는 게 좋겠어요.</p>
                <p class="lead">SYour body temperature goes up by 2 degrees with just a hat, you know? Don't worry about dripping temperatures!
                    You can refer to Lee Yumi's cute beanie fashion. Isn't the combination of the beanie and the checkered pattern lovely?
                    Fortunately, the temperature will rise in the afternoon like last week, so you'd better prepare to wear and take off your thick outerwear.</p>
                <br>
            </div>
            <div class="col-md-5">
                <img src="./resources/resource/leeyoum.jpg" style="width: 100%">
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7 order-md-2">
                <h2 class="featurette-heading fw-normal lh-1">트렌치 코트와의 작별을 <span class="text-muted">Say goodbye to your trench coat</span></h2>
                <p class="lead">사실상 오늘이 트렌치 코트나 얇은 코트와의 작별을 고하는 날이 될 것 같습니다. 내일부터는 계속해서 영하권 날씨가 지속될 전망인데요.
                    마지막으로 이 날씨를 만끽하기 위해 마마무 화사처럼 가을 느낌이 물씬 느껴지는 트렌치 코트를 플로럴 원피스와 데님 진과 함께 매치해보세요.
                    무릎 위까지 올라오는 사이하이 부츠로 마지막 가을 무드 스타일링을 마무리해준다면 가을 패션과의 아름다운 이별은 확실하게 할 수 있겠죠?</p>
                <p class="lead">In fact, I think today will be the day to say goodbye to a trench coat or a thin coat.
                    The weather is expected to continue below zero from tomorrow. Finally, to enjoy this weather,
                    match a trench coat that feels like autumn like Hwasa of MAMAMOO with floral dress and denim jeans.
                    If you finish the last autumn mood styling with the high boots that come up to your knees,
                    you can definitely say goodbye to autumn fashion, right?</p>
                <br>
            </div>
            <div class="col-md-5 order-md-1">
                <img src="./resources/resource/hwasa.jpg" style="width: 100%">
            </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading fw-normal lh-1"> 패딩으로 멋내기  <span class="text-muted">Dressing up with a padded jacket</span></h2>
                <p class="lead">나는 ‘얼죽코야’, ‘패딩은 왠지 안멋져!’ 라는 분들 많죠? 하지만 패딩으로도 멋진 스타일링을 할 수 있다구요. 강민경처럼요.
                    비비드한 컬러의 니트와 시크한 데님진, 스니커즈, 무심하게 쓴 선글라스와 쿨하지만 환경을 생각하는 텀블러까지!
                     진정한 멋쟁이가 아닐 수 없죠. 블랙 컬러 패딩이 식상하다면 강민경처럼 광택 재질의 패딩을 선택해 기분전환을 해보는 것도 좋겠군요.</p>
                <p class="lead">There are a lot of people who say, "Eol-juk-ko" and "Padded jackets aren't cool!"
                    But you can also style it with a padded jacket. Like Kang Minkyung. Vivid colored knitwear, chic denim jeans, sneakers,
                    indifferently worn sunglasses and cool but environmentally conscious tumbler! He's a real cool guy.
                    If black padding is boring, it would be good to choose a glossy padded jacket like Kang Min-kyung to refresh yourself.</p>
                <br>
                <p>출처 : https://www.allurekorea.com/2022/11/25/thisweek-23/</p>
            </div>
            <div class="col-md-5">
                <img src="./resources/resource/minkyong.jpg" style="width: 100%">
            </div>
        </div>

        <hr class="featurette-divider">
    </div>
    <hr style="border:#755139 2px dashed">
    <jsp:include page="footer.jsp"/>
</body>
</html>

