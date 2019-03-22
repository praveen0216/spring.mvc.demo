<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>

<head>

	<title>
	Student Confirmation
	</title>
</head>
<body>
<br><br>
The Student is confirmed : ${student.firstName} ${ student.lastName}

<br><br>

Country: ${ student.country}

<br><br>

<!-- Spring will call student.getFavoriteLanguage() -->

Favorite Language: ${student.favoriteLanguage}
<br> <br>

Operating Systems : 
<!-- use jstl: for looping  -->
<ul>
	<c:forEach var="temp" items="${student.operatingSystems}">
	<li>${temp}</li>
	</c:forEach>

</ul>
</body>

</html>