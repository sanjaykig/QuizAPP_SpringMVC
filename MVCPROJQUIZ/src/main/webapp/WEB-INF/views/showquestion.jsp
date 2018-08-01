
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%
	String[] ans = request.getParameterValues("subjectid");
	List<String> sublist = Arrays.asList(ans);
	request.setAttribute("sublist", sublist);
%>
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

.fixed-header {
	width: 100%;
	position: fixed;
	background: #333;
	padding: 10px 0;
	color: #fff;
	top: 0%;
	text-align: center;
}

.body-form {
	width: 100%;
	height: 50%;
	padding: 100px 0px;
	color: #000000;
	top: 0%;
	text-align: center;
}

body {
	overflow-y: scroll;
}
</style>
<div class="fixed-header">

	<h1>Question List</h1>								<!-- Webpage showing the question paper for selected subject in browser -->

</div>
<body>
	<div class="body-form">
		<form:form method="POST" modelAttribute="qa" action="showquestion">
			<c:forEach var="question" items="${list}">	<!-- Form by POST to @Controller : ShowQuestion.java -->
				<p>${question.questionnum}${question.question}</p>
				<p>(1)${question.option1} &emsp; (2)${question.option2} &emsp;
					(3)${question.option3} &emsp; (4)${question.option4}</p>


				<form:input path="answer" />
			</c:forEach>

			<br />
			<br />
			<br />
			<form:hidden path="subjectid" value="${sublist[0]}" />
														<%-- ${sublist} fetched from java code at the begin of showquestion.jsp --%>

			<input type="submit" value="submit" />
		</form:form>
		<br />
	</div>
</body>
<a href="/mvc/" id="myBtn">HOME</a>						<!-- Home button for better navigation -->