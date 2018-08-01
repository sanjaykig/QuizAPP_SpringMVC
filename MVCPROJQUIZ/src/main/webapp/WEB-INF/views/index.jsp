<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
.fixed-header{
        width: 100%;
        position: fixed;        
        background: #333;
        padding: 10px 0;
        color: #fff;
        top:0%;
        text-align: center;
    }


.body-form{
        width: 100%;
        position: fixed;        
        
        padding: 100px 0px;
        color: #000000;
        top:0%;
        text-align: center;
    }
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Test Application</title>
</head>
<body>
<div class="fixed-header">
        
            <h1> Welcome to QUIZ! </h1> 			<!-- Landing welcome page for the project -->
       
    </div>
    <div class="body-form">
   
<a href="adminchoices" id="myBtn">Admin login</a> 	<!-- Better navigation for ADMIN Controller : AdminLogin.java -->

<a href="showsubject" id="myBtn">Select subject</a> <!-- Better navigation for User Controller : ShowSubject.java -->
</div>
</body>
</html>