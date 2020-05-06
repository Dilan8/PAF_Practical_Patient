<%@page import="model.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<head>
<meta charset="ISO-8859-1">
<title>Items Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.5.1.min.js"></script>
<script src="Components/items.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Patient Management </h1>
				<form id="formItem" name="formItem">
					Patient Name: 
					<input id="pname" name="pname" type="text"
						class="form-control form-control-sm"> <br>
					Patient Gender:
					 <input id="ppsw" name="ppsw" type="text"
						class="form-control form-control-sm"> <br>
					 Patient DOB: 
					 <input id="pdob" name="pdob" type="text"
						class="form-control form-control-sm"> <br>
				    Patient NIC: 
				     <input id="pnic" name="pnic" type="text"
						class="form-control form-control-sm"> <br>
					 <input id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary">
					<input type="hidden"id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
                <div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divItemsGrid">
					<%
						Item itemObj = new Item();
						out.print(itemObj.readItems());
					%>
				</div>
			</div>
		</div>
	</div>

</body>
</html>