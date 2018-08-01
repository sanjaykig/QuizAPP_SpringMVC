
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style type="text/css">
#myBtn {
	/* Hidden by default */
	-webkit-appearance: button;
	-moz-appearance: button;
	appearance: button;
	position: relative; /* Fixed/sticky position */
	background-color: red; /* Set a background color */
	color: white; /* Text color */
	cursor: pointer; /* Add a mouse pointer on hover */
	padding: 15px; /* Some padding */
	bottom: -100px;
	border-radius: 10px; /* Rounded corners */
	font-size: 18px; /* Increase font size */
}

#myBtn:hover {
	background-color: #555; /* Add a dark-grey background on hover */
}

#myBtn2 {
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

#myBtn2:hover {
	background-color: #555; /* Add a dark-grey background on hover */
}

#selBtn {
	/* Hidden by default */
	-webkit-appearance: button;
	-moz-appearance: button;
	appearance: button;
	position: relative; /* Fixed/sticky position */
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

#selBtn:hover {
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

	<h1>Select Action</h1>

</div>
<body>
	<div class="body-form">
		<a href="addquestion" id="myBtn">Add question</a>
													<!-- Add question Controller : AddQuestion.java -->
		<a href="selectdelete" id="myBtn">Delete question</a>
													<!-- Delete question Controller : DeleteQuestion.java -->
	</div>
</body>
<a href="/mvc/" id="myBtn2">HOME</a> 				<!-- Home button for easier navigation -->