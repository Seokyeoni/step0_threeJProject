<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact.jsp</title>
</head>
<body>

  <!-- Contact -->
 <center>
 <img src="contactus.jpg" width="700px" height="500px"> 
   <div  align="center" class="w3-center w3-padding-64" id="contact"> </div>

  <form class="w3-container" action="#" >
    <div  align="center" class="w3-section">
      <h4>Name</h4>
      <input class="w3-input w3-border w3-hover-border-black" style="width:1000px;" type="text" name="Name" required>
    </div>
    <div  align="center" class="w3-section">
      <h4>E-mail</h4>
      <input class="w3-input w3-border w3-hover-border-black" style="width:1000px;" type="text" name="Email" required>
    </div>
    <div  align="center" class="w3-section">
      <h4>Field</h4>
      <input class="w3-input w3-border w3-hover-border-black" style="width:1000px;" name="Field" required>
    </div>
    <div  align="center" class="w3-section">
      <h4>Message</h4>
      <input class="w3-input w3-border w3-hover-border-black" style="width:1000px;" name="Message" required>
    </div>
  </form>
    <center>
    <button type="submit" class="w3-button w3-block w3-black" onclick="sub('제출 완료되었습니다. 확인 후 연락드리겠습니다.')">Submit</button>    </center>

<script type="text/javascript">
function sub(v){
	alert(v);
}
</script>
</body>
</html>