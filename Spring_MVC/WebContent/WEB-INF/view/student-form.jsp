<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>
	<title>Student Registration form</title>
</head>

<body>
	<form:form action="processForm" modelAttribute="student">
		First name: <form:input path="firstName"/>
		
		<br><br>
		
		Last name: <form:input path="lastName"/>
		
		<br><br>
		
		<input type="submit" value="Submit">
		
		<br><br>
		
		Country:
		
		<form:select path="country">
		
			<form:options items="${student.countryOptions}"/>
		
		</form:select>
		
		<br><br> 
		
		
		Favorite Language:
		
		<br><br> 
		
		Java <form:radiobutton path="favoriteLanguage" value="java" />
		Python <form:radiobutton path="favoriteLanguage" value="Python" />
		c# <form:radiobutton path="favoriteLanguage" value="C#" />
		Php <form:radiobutton path="favoriteLanguage" value="php" />
		
		
		<br><br>
		
		Operating Systems:
		
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Mac OS <form:checkbox path="operatingSystems" value="MAC OS"/>
		MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/>
		
		
	</form:form>
</body>

</html>