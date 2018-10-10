<!DOCTYPE html>
<html>
<head>
    <title>Sign-Up Page</title>
    <meta charset="utf-8">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:import url="header.jsp" />
    <link rel="stylesheet" type="text/css" href="styles/main.css" />
    <script src="includes/main.js" type="text/javascript"></script>
</head>
<body>
    <h1>Sign Up Form</h1>
    <div id="error_message" class="notVisible"></div>
    <form action="membership" method="post" onsubmit="return validateForm();"
          id="signup_form">
        <input type="hidden" name="action" value="add">
        <label class="pad_top">Fullname:</label>
        <input type="text" id="fullname" placeholder="Full Name" 
               required />
        <span id="fullname_error" class="notVisible">*</span><br />
        
        <label class="pad_top">Username:</label>
        <input type="text" id="username" placeholder="Username" 
               required />
        <span id="username_error" class="notVisible">*</span><br />
       
        <label class="pad_top">Email:</label>
        <input type="email" id="email" placeholder="Email"
               required />
        <span id="email_error" class="notVisible">*</span><br />
        
        <label class="pad_top">Password:</label>
        <input type="password" id="password" placeholder="Password"
               required />
        <span id="password_error" class="notVisible">*</span><br />
        
        <label class="pad_top">Confirm Password:</label>
        <input type="password" id="confirm_password" 
               placeholder="Confirm Password" required />
        <span id="confirm_error" class="notVisible">*</span><br />
        
        <label class="pad_top">Date of Birth:</label>
        <input type="date" id="dateofbirth" required />
        <span id="dateofbirth_error" class="notVisible">*</span><br />
            
        <label class="pad_top">Security Question:</label>
        <select name="security_questions" id="security_questions" 
                form="signup_form" required onchange="DynamicForm()">
            <option disabled selected value>Select an option</option>
            <option value="pet">
                What was the name of your first pet?
            </option>
            <option value="car">
                What model was your first car?
            </option>
            <option value="school">
                What was the name of your first school?
            </option>
        </select>
        <span id="security_question_error" class="notVisible">*</span><br />
    
        <label class="pad_top"></label>
        <input type="text" id="security_answer" class="notVisible"
               placeholder="Answer" required />
        <span id="security_answer_error" class="notVisible">*</span><br />
        
        <!-- Form buttons-->
        <input type="hidden" name="action" value="signup">
        <input type="submit" value="Sign Up" class="button submit_button" />
        <input type="reset" value="Clear" onclick="cleanup()" class="button reset_button" />
    </form>
    <c:import url="footer.jsp" />
</body>