<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
.mySlides {display:none}
.w3-tag, .fa {cursor:pointer}
.w3-tag {height:15px;width:15px;padding:0;margin-top:6px}

a{
text-decoration: none;
}
</style>
<body>

<!-- Links (sit on top) -->
<div class="w3-top">
  <div class="w3-row w3-large w3-light-grey">
    <div class="w3-col s3">
      <a href="#" class="w3-button w3-block">Home</a>
    </div>
    <div class="w3-col s3">
      <a href="#plans" class="w3-button w3-block">Receipt</a>
    </div>
    <div class="w3-col s3">
      <a href="#about" class="w3-button w3-block">Feedback</a>
    </div>
    <div class="w3-col s3">
      <a href="#contact" class="w3-button w3-block">Contact</a>
    </div>
  </div>
</div>

<!-- Content -->
<div class="w3-content" style="max-width:1100px;margin-top:80px;margin-bottom:80px">
	${sessionScope.id}님 안녕하세요!&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="main.html">로그아웃</a>&nbsp;&nbsp;&nbsp;
   	<!-- Join Modal -->
<div id="join" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom">
  	<form  action="cont" method="post">
  	<input type="hidden" name="command" value="peopleInsert">
    <div class="w3-container w3-white w3-display-container">
      <span onclick="document.getElementById('join').style.display='none'" class="w3-button w3-display-topright w3-large">x</span>
      <h4>아이디[ID]</h4>
    </div>
    <div class="w3-container">
      <input type="text" placeholder="ID" name="id" required>
    </div>
    <div class="w3-container w3-white">
      <h4>비밀번호[Password]</h4>
    </div>
    <div class="w3-container">
      <input type="password" placeholder="PASSWORD" name="pw" required>
    </div>
    <div class="w3-container w3-white">
      <h4>이름[Name]</h4>
    </div>
    <div class="w3-container">
      <input type="text" placeholder="NAME" name="name" required>
    </div>
    <div class="w3-container w3-white">
      <h4>성별[Gender]</h4>
    </div>
    <div class="w3-container">
      <input type="radio" name="gender" value="male" > 남자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	  <input type="radio" name="gender" value="female"> 여자<br>
    </div>
    <div class="w3-container w3-white">
      <h4	>나이[Age]</h4>
    </div>
    <div class="w3-container">
      <input type="text" placeholder="AGE" name="age" required>
    </div>
    <div>
	  <input type="checkbox" id="agreeInfo" name="agreeInfo" value="agreeInfo"  required> <label for="agreeInfo">개인정보제공 동의</label>
	</div>
	 <div class "clearfix">
    <button type="button" onclick="document.getElementById('join').style.display='none'" class="w3-button w3-green">취소</button>&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="submit" class="w3-button w3-red">가입</button>
    </div>
    </form>
  </div>
</div>



<!-- Contact Modal -->
<div id="login" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-white">
      <span onclick="document.getElementById('login').style.display='none'" class="w3-button w3-display-topright w3-large">x</span>
      <h1>로그인</h1>
    </div>
    <div class="w3-container">
      <form action="cont" method="post">
      	<input type="hidden" name="command" value="peopleLogin">
        <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="ID" name="loginid" required></p>
        <p><input class="w3-input w3-padding-16 w3-border" type="password" placeholder="PASSWORD" name="loginpw" required ></p>
        <p><button class="w3-button" type="submit">Login</button></p>
      </form>
    </div>
  </div>
</div>

   	
  <div class="w3-panel">
    <h1><b>Saving Money &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 영수증을 부탁해乃</b></h1>
  </div>

  <!-- Slideshow -->
  <div class="w3-container">
    <div class="w3-display-container mySlides">
      <img src="images/design_program_690.jpg" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
      </div>
    </div>
    <div class="w3-display-container mySlides">
      <img src="images/savingmoney.jpg" style="width:100%">
      <div class="w3-display-middle w3-container w3-padding-32">
      </div>
    </div>
    <div class="w3-display-container mySlides">
      <img src="images/success.jpg" style="width:100%">
      <div class="w3-display-topright w3-container w3-padding-32">
      </div>
    </div>

    <div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>


  
  <!-- Grid -->
  <div class="w3-row w3-container">
    <div class="w3-center w3-padding-64">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">What We Offer</span>
    </div>
    <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16">
      <h3>Preparation</h3>
      <p> 분석하고 싶은 소비 패턴의 영수증 준비해주세요.  </p>
    </div>

    <div class="w3-col l3 m6 w3-grey w3-container w3-padding-16">
      <h3>Sortation</h3>
      <p>식비,교통비,여가비,쇼핑비 등 항목별로 데이터를 입력해주세요.<a href="http://localhost/step333_threeJProject/guideexample.jsp">&nbsp;예시</a></p>
    </div>

    <div class="w3-col l3 m6 w3-dark-grey w3-container w3-padding-16">
      <h3>Analysis</h3>
      <p>항목별 지출내역을 차트로 구성해 드립니다.</p>
    </div>

    <div class="w3-col l3 m6 w3-black w3-container w3-padding-16">
      <h3>Consultation</h3>
      <p>분야별 전문가의 조언으로 합리적 소비습관을 만들어 드립니다.</p>
    </div>
  </div>
  <br><br><br><br>

  <!-- Grid -->
  <div class="w3-row-padding" id="plans">
    <div class="w3-center w3-padding-64">
    <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">What We Process</span>
    </div>
   <form action="cont">
   <input type="hidden" name="command" value="receiptInsert">
    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-center w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">Insert</li>
        <li class="w3-padding-16"><b><input type="text" placeholder="ID" name="personId"></b></li>
        <li class="w3-padding-16"><b><input type="text" placeholder="식비" name="foodExp"></b></li>
        <li class="w3-padding-16"><b><input type="text" placeholder="교통비" name="transExp"></b></li>
        <li class="w3-padding-16"><b><input type="text" placeholder="쇼핑비" name="shopExp"></b></li>
        <li class="w3-padding-16"><b><input type="text" placeholder="여가비" name="leisureExp"></b></li>
        <li class="w3-padding-16"><b><input type="text" placeholder="통신비" name="teleExp"></b></li>
        
        <li class="w3-light-grey w3-padding-24">
          <button class="w3-button w3-green w3-padding-large" >등록</button>
        </li>
      </ul>
    </div>
    </form>

    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-center w3-hover-shadow">
         <li class="w3-grey w3-xlarge w3-padding-32">Search</li>
         	<li class="w3-padding-16"><b><input type="text" placeholder="ID" name="personId" id="personId1"></b></li>
         <li class="w3-light-grey w3-padding-24">
            <button class="w3-button w3-green w3-padding-large" onclick="search()">검색</button>
	        <button class="w3-button w3-green w3-padding-large" onclick="location.href='cont?command=receiptArray'">전체검색</button>
         </li>
      </ul>
    </div>

   
<input type="hidden" name="command" value="receiptTotalSearch">
   <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-center w3-hover-shadow">
         <li class="w3-black w3-xlarge w3-padding-32">Chart</li>
         <li class="w3-padding-16"><b><input type="text" placeholder="ID" id="personId2"></b></li>
         <li class="w3-light-grey w3-padding-24">
         <button class="w3-button w3-green w3-padding-large" onclick="ajaxChart()">검색</button></li>
      </ul>
   </div>
   </div>
  <div id="chart" style="width: 800px; height: 500px; position:relative; left:150px; top:50px;"></div>
  <br><br><br><br><br>


<!-- Grid -->
  <div class="w3-row-padding" id="about">
    <div class="w3-center w3-padding-64">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Who We Are</span>
    </div>

    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4" style="text-align: center;">
        <img src="images/gio_b.jpg" alt="MY" style="width:77%; border-radius: 50%;">
        <div class="w3-container">
          <h3>Giovanni Cho</h3>
          <p class="w3-opacity">Finance Specialist</p>
          <p>당신의 지출은 자기표현입니다. 그에 합당한 가치를 누릴 수 있도록 소비를 연구합니다.</p>
        </div>
      </div>
    </div>

    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4" style="text-align: center;">
        <img src="images/yj.jpg" alt="JY" style="width:65%; border-radius: 50%;">
        <div class="w3-container">
          <h3>JaeYeon Park</h3>
          <p class="w3-opacity">Finance Specialist</p>
          <p>꼼꼼하게 비교하고 체크하여 높은 가성비로 고퀄리티의 생활 소비 패턴을 만들어드립니다.</p>
        </div>
      </div>
    </div>

    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4" style="text-align: center;">
        <img src="images/sh.jpg" alt="SH" style="width:65%; border-radius: 50%;">
        <div class="w3-container">
          <h3>SeokHyun Jeong</h3>
          <p class="w3-opacity">Finance Specialist</p>
          <p>무심코 새나가는 고정지출들을 캐치하여 합리적인 재무상태와 자산관리를 해드립니다.</p>
        </div>
      </div>
    </div>
  </div>

 <!-- Contact -->
  <div class="w3-center w3-padding-64" id="contact">
    <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"><a href="receiptJSP/Contact.jsp">Contact Us</a></span>
  </div>



<!-- Footer -->

<footer class="w3-container w3-padding-32 w3-light-grey w3-center">
  <h4>Footer</h4>
  <a href="#" class="w3-button w3-black w3-margin"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
</footer>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 1500); 
}

// Slideshow
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demodots");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}

var jsData;
function ajaxChart(){
   var xhttp = new XMLHttpRequest();
   xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) { 
         jsData = this.responseText;
         jsData = eval(jsData);
         google.charts.load('current', {'packages':['bar']});
          google.charts.setOnLoadCallback(drawChart);
      }
   };
   xhttp.open("GET", "cont?command=receiptTotalSearch&personId2="+document.getElementById("personId2").value, true);
   xhttp.send();
}

function drawChart() {
    var data = google.visualization.arrayToDataTable(jsData);

    var options = {
      chart: {
        title: '소비패턴 비교',
        subtitle: '-개인 vs 전체평균-',
      }
    };

    var chart = new google.charts.Bar(document.getElementById('chart'));

    chart.draw(data, google.charts.Bar.convertOptions(options));
  }


function search(){
	location.href='cont?command=receiptSearch&personId1='+document.getElementById("personId1").value;
}


</script>

</body>
</html>


