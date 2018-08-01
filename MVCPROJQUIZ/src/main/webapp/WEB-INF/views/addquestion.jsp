
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

.fixed-header {
	width: 100%;
	position: fixed;
	background: #333;
	padding: 10px 0;
	color: #fff;
	top: 0%;
	text-align: center;
}

#myBtn:hover {
	background-color: #555; /* Add a dark-grey background on hover */
}

.body-form {
	width: 100%;
	position: fixed;
	padding: 100px 0px;
	color: #000000;
	top: 0%;
	text-align: center;
}

body {
	overflow-y: scroll;
}

.test {
	position: fixed;
	bottom: 300px;
	right: 30px;
	margin: auto;
	border: 3px solid green;
	padding: 10px 30px;
}

h1 {
	text-decoration: underline;
	text-align: center;
}
</style>
<div class="fixed-header">

	<h1>Add NEW Answer</h1>

</div>
<body>
	<h1>Add answer</h1>
	<div class="test"> 								<!-- Legend to list Subject name and id -->
		
		<h1>LEGEND</h1> 							<!-- h1 modified to underline and center-text -->
		<pre>
SUBJECT NAME : General Knowledge || SUBJECT ID : 1
SUBJECT NAME : JAVA 		 || SUBJECT ID : 2
</pre>
	</div>
	<div class="body-form">
		<form:form method="POST" modelAttribute="ques" action="addquestion">
			<p>
				Q.no :
				<form:input path="questionnum" />
			</p>
			<p>
				Question :
				<form:input path="question" />
			</p>
			<p>
				Option 1 :
				<form:input path="option1" />
			</p>
			<p>
				Option 2 :
				<form:input path="option2" />
			</p>
			<p>
				Option 3 :
				<form:input path="option3" />
			</p>
			<p>
				Option 4 :
				<form:input path="option4" />
			</p>
			<p>
				Correct option(Index) :
				<form:input path="correctoption" />
			</p>
			<p>
				Subject NAME :
				<form:input path="subjectname" />	<!--  Need to add subject name manually -->
			</p>
			<p>
				Subject ID :
				<form:input path="subjectid" />		<!--  Need to add subject id manually -->
			</p>
			<input type="submit" value="submit"
				onclick="return alert('Saved successfully!')" />
		</form:form> 								<!-- Form submission using POST method, Controller : AddQuestion.java -->
	</div>
	<br />
	<a href="/mvc/" id="myBtn">HOME</a> 			<!-- Home button for easier navigation -->
</body>