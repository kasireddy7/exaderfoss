<!DOCTYPE HTML>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<title>Employee Directory</title>
</head>

<body>

<!-- 	<p>
		<a href="http://localhost:8080/EmployeeDirectoryJAXRS/rest/employees">http://reddy.org/rest/employees</a>
	</p>
	<p>
		<a
			href="http://localhost:8080/EmployeeDirectoryJAXRS/rest/employees/1">http://reddy.org/rest/employees/1</a>
	</p>
	<p>
		<a
			href="http://localhost:8080/EmployeeDirectoryJAXRS/rest/employees/1/reports">http://reddy.org/rest/employees/1/reports</a>
	</p>

 -->
	
    	
    	
	<form name="employeeForm" method="get">
	<table>
		<tr><td>Id:</td><td><input type="text" id="id" /></td></tr>
		<tr><td>First Name:</td><td><input type="text" id="firstName" /></td></tr>
		<tr><td>Last Name:</td><td><input type="text" id="lastName" /></td></tr>
		<tr><td>Title:</td><td><input type="text" id="title" /></td></tr>
		<tr><td>City:</td><td><input type="text" id="city" /></td></tr>
		<tr><td>Dep:</td><td><input type="text" id="department" /></td></tr>
		<tr><td>ManagerId:</td><td><input type="text" id="managerId" /></td></tr>
		<tr><td>Office Ph:</td><td><input type="text" id="officePhone" /></td></tr>
		<tr><td>Cell Ph:</td><td><input type="text" id="cellPhone" /></td></tr>
		<tr><td>E-mail:</td><td><input type="text" id="email" /></td></tr>
		<tr><td>Picture:</td><td><input type="text" id="picture" /></td></tr>
		<tr><td><input type="button" name="submit" value="Save" onclick="saveEmployee(this, event);"></td></tr>
	
	</table>

		
	
	
	</form>


</body>
<script>
	function saveEmployee(){
		// create JSON
		var jsonObj = {
			    //"id": document.forms["employeeForm"]["id"].value,
			    "firstName": document.forms["employeeForm"]["firstName"].value,
			    "lastName": document.forms["employeeForm"]["lastName"].value,
			    "title": document.forms["employeeForm"]["title"].value,
			    "city": document.forms["employeeForm"]["city"].value,
			    "department": document.forms["employeeForm"]["department"].value,
			    "managerId": document.forms["employeeForm"]["managerId"].value,
			    "officePhone": document.forms["employeeForm"]["officePhone"].value,
			    "cellPhone": document.forms["employeeForm"]["cellPhone"].value,
			    "email": document.forms["employeeForm"]["email"].value,
			    "picture": document.forms["employeeForm"]["picture"].value
		};
		// convert JSON to string
		var jsonString = JSON.stringify(jsonObj);
		 $.ajax({
		        url: "http://localhost:8080/EmployeeDirectoryJAXRS/rest/employees/save",
		        type: "POST",
		        headers: {"Content-Type":"application/json"},
		        data: jsonString,
		        dataType: "json",
		        success: function(data){alert("success");},
		 		error: function(e){alert("error"+e.responseText)}
		    });
	} 
</script>


</html>