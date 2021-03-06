
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%
	String[] ans = request.getParameterValues("subjectid");
	List<String> sublist = Arrays.asList(ans);
	request.setAttribute("sublist", sublist);
%>
<!-- Fetching parameters from the URL generated by Controller : DeleteQuestion.java RequestMapping : /deletequestions -->
<style type="text/css">
#myBtn {
	/* Hidden by default */
	-webkit-appearance: button;
	-moz-appearance: button;
	appearance: button;
	position: fixed; /* Fixed/sticky position */
	bottom: 20px; /* Place the button at the bottom of the page */
	right: 30px; /* Place the button 30px from the right */
	z-index: 99; /* Make sure it does not overlap */
	border: none; /* Remove borders */
	outline: none; /* Remove outline */
	background-color: red; /* Set a background color */
	color: white; /* Text color */
	cursor: pointer; /* Add a mouse pointer on hover */
	padding: 15px; /* Some padding */
	border-radius: 10px; /* Rounded corners */
	font-size: 18px; /* Increase font size */
}

#myBtn:hover {
	background-color: #555; /* Add a dark-grey background on hover */
}

.body-form {
	width: 100%;
	position: 50%;
	padding: 100px 0px;
	color: #000000;
	top: 0%;
	text-align: center;
}

.fixed-header {
	width: 100%;
	position: fixed;
	background: #333;
	padding: 10px 0;
	color: #fff;
	top: 0%;
	text-align: center;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Importing jQuery from Google host -->
<script>
	function f1(objButton) { 				/* function triggered onclick 'DESTROY' button */
		alert("Deleting Question no:  " + objButton.id); 
											/* Window browser Alert */
		console.log(objButton.id);
		console.log(objButton.name);
		var qnum = objButton.id;
		var subname = objButton.name;
		setTimeout(location.reload.bind(location), 100);
		$.ajax({ 							/* Ajax call to send parameters to /deletequestion */
			type : "POST",
			url : "/mvc/deletequestion",
			data : {
				questionnum : qnum,
				subjectid : subname
			}

		})
	}
</script>
<div class="fixed-header">

	<h1>Question List</h1>

</div>
<div class="body-form">
	<c:forEach var="question" items="${list}"> 
											<%-- ${list} coming from @Controller: DeleteQuestion.java @RequestMapping(value = "/deletequestions")  --%>
		<p>${question.questionnum}${question.question}</p>
		<input type='button' name='${sublist[0]}' id='${question.questionnum}'
			value='DESTROY' onclick="return confirm('Are you sure?')"
			onclick='f1(this)' />			<%-- ${sublist[0]} Fetched from begin of this JSP and This button prompts the action for safety reasons --%>
											<!-- Runs the javascript in the deletequestions.jsp powered by Ajax-->





	</c:forEach>
	<br /> <br /> <br /> <br />
</div>
<a href="/mvc/" id="myBtn">HOME</a> 		<!-- Home button for easier navigation -->