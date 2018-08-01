
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%
	String[] ans = request.getParameterValues("answer");
	List<String> reslist = Arrays.asList(ans);
	request.setAttribute("reslist", reslist);
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
	position: fixed;
	padding: 100px 0px;
	color: #000000;
	top: 0%;
	text-align: center;
}
</style>
<script>
var score =0;
</script>
<div class="fixed-header">

	<h1>Result List</h1>									<!-- Webpage showing the calculated score from the test -->

</div>
<div class="body-form">
	<c:forEach var="question" items="${show}" varStatus="loop">
		<p>${question.questionnum}${question.question}</p> <%-- ${show} fetched from @Controller : ShowQuestion @RequestMapping(value = "/showquestion") --%>
		<p>
			CORRECT OPTION: ${question.correctoption} SELECTED OPTION:
			<c:out value="${reslist[loop.index]}"></c:out>	<!-- reslist fetched from java code at begin of result.jsp -->
		</p>
		<script type="text/javascript"> if (${question.correctoption} == ${reslist[loop.index]})
		{score++;}
		</script>
															<!-- javascript to calculate the score -->
	</c:forEach>
	<script>alert('Your score is :   '+score);</script>
															<!-- Browser Alert showing the score -->
	<br />

</div>
<a href="/mvc/" id="myBtn">HOME</a>							<!-- Home button for better navigation -->
