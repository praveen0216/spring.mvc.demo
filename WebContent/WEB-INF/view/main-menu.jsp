<!-- <!DOCTYPE html>
<html>

<body>
<h2>Spring MVC Demo-Home Page</h2>
<hr>

<a href="showForm">Hello World form</a>
</body>
</html> -->

<!DOCTYPE html>
<html>

<head>

	<link rel="stylesheet" type="text/css" 
		  href="${pageContext.request.contextPath}/resources/css/my-test.css">

    <script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>

</head>

<body>

<h2>Spring MVC Demo - Home Page</h2>

<a href="hello/showForm">Plain Hello World</a>
<br><br>
<a href="student/showForm">Student form</a>

<br><br>

<a href="customer/showForm">Customer form</a>
<br><br>

<img src="${pageContext.request.contextPath}/resources/images/pic1.JPG" />

<br><br>

<input type="button" onclick="doSomeWork()" value="Click Me"/>

</body>

</html>