<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Books</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: url('https://img.freepik.com/premium-photo/school-boy-taking-books-from-shelves-library-with-stack-books-hands-child-brain-development-learn-read-cognitive-skills-concept_183219-6415.jpg') no-repeat center center fixed;
	background-size: cover;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	background-color: rgba(255, 255, 255, 0.9); /* Added transparency */
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 600px;
}

h1 {
	color: #45B39D;
	text-align: center;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

td {
	padding: 10px;
	vertical-align: middle;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #cccccc;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 16px;
}

button[type="submit"], button[type="reset"] {
	width: 100px;
	padding: 10px;
	background-color: #45B39D;
	border: none;
	border-radius: 4px;
	color: #ffffff;
	font-size: 16px;
	cursor: pointer;
	margin: 10px 5px;
}

button[type="reset"] {
	background-color: #f44336;
}

button[type="submit"]:hover {
	background-color: #0E6655;
}

button[type="reset"]:hover {
	background-color: #e53935;
}

.form-group {
	margin-bottom: 15px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
	color: #555555;
}

@keyframes fadeIn {
	from {
		opacity: 0;
	}
	to {
		opacity: 1;
	}
}

.form-container {
	animation: fadeIn 1s ease-in-out;
}

.link a {
	color: green;
	text-decoration: none;
}

.link a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="form-container">
		<h1>Add Your Book</h1>
		<form action="AddBookServlet" method="post">
			<div class="form-group">
				<label for="title">Title of Book</label> 
				<input type="text" id="title" name="title" required>
			</div>
			<div class="form-group">
				<label for="author">Author of Book</label> 
				<input type="text" id="author" name="author" required>
			</div>
			<div class="form-group">
				<label for="price">Price Of Book(In Rs)</label> 
				<input type="text" id="price" name="price" required>
			</div>
			<div class="form-group" style="text-align: center;">
				<button type="submit" name="action" value="create">Add</button>
				<button type="reset">Cancel</button>
			</div>
			<center>
				<div class="link">
					<a href="Booklist.jsp">View BookList</a>
				</div>
			</center>
		</form>
	</div>
</body>
</html>
