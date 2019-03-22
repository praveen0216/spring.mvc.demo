<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
<head>
	<title> Student Registration Form</title>
</head>

<body>

	<form:form action="processForm" modelAttribute="student">
	
	First Name: <form:input path="firstName"/>
	<br><br>
	
	Last Name : <form:input path="lastName" />
	<br><br>

	<%-- Country : <form:select path="country">
					<form:option value="Brazil" label="Brazil"/>
					<form:option value="France" label="France"/>
					<form:option value="Germany" label="Germany"/>
					<form:option value="India" label="India"/>
					<form:option value="USA" label="USA"/>
			</form:select> --%>	
			
			<!-- items refers to the collection of data -->
	Country : <form:select path="country">
					<form:options items="${student.countryOptions}" />
					<!-- Spring will call student.getCountryOptions() -->			
			</form:select> 
	
	
	<%-- <!-- Updating above code for properties file use -->		
	Country : <form:select path="country">
					<form:options items="${theCountryOptions}" />
					<!-- Spring will call student.getCountryOptions() -->			
			</form:select>		
			
			<br><br> --%>
			
	<%-- Favorite Language :
	
	Java <form:radiobutton path="favoriteLanguage" value="Java"/>
	PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
	CPP <form:radiobutton path="favoriteLanguage" value="CPP"/>
	Dot Net <form:radiobutton path="favoriteLanguage" value="DotNet"/>
	Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/> --%>
	
	<!-- now using properties file we can get radio options as below-->
	
	Favorite Language: <form:radiobuttons path="favoriteLanguage" 
	                    items="${FavoriteLanguage}" />
	                   
	
	<br><br>
	
	Operating Systems: 
	
	Linux <form:checkbox path="operatingSystems" value="Linux"/>
	Windows <form:checkbox path="operatingSystems" value="Windows"/>
	Solaris <form:checkbox path="operatingSystems" value="Solaris"/>
	Mac Os <form:checkbox path="operatingSystems" value="Mac"/>
	Ubuntu <form:checkbox path="operatingSystems" value="Ubuntu"/>
	
	
	
	
	<br><br>		
    <input type="submit" value="Submit"/>
	
	
	</form:form>


</body>

</html>