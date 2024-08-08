<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.entity.Book"%>
<%@ page import="com.dao.BookDao"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookList</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: url('https://epe.brightspotcdn.com/8a/bb/27ab7f7d4de2a0e7b745965f306d/011624-school-library-ap-bs.jpg') no-repeat center center fixed;
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
	max-width: 800px;
}

h1 {
	color: #45B39D;
	text-align: center;
	margin-bottom: 20px;
}

h2 {
	color: #0E6655;
	text-align: center;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #45B39D;
	color: white;
}

td {
	vertical-align: middle;
}

button[type="submit"] {
	background-color: #f44336;
	border: none;
	border-radius: 4px;
	color: #ffffff;
	font-size: 16px;
	cursor: pointer;
	padding: 10px;
}

button[type="submit"]:hover {
	background-color: #e53935;
}

.link a {
	color: #45B39D;
	text-decoration: none;
	font-weight: bold;
}

.link a:hover {
	text-decoration: underline;
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
</style>
</head>
<body>
	<div class="form-container">
		<center>
			<h1>Books Added</h1>
			<table>
				<tr>
					<th>Book ID</th>
					<th>Title</th>
					<th>Author</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
				<%
					// Access the list of books from the DAO
					BookDao bookDao = new BookDao();
					List<Book> books = bookDao.booksList(); // Assuming this method fetches all books

					for (Book book : books) {
				%>
				<tr>
					<td><%=book.getBid()%></td>
					<td><%=book.getTitle()%></td>
					<td><%=book.getAuthor()%></td>
					<td>Rs <%=book.getPrice()%></td>
					<td>
						<!-- Delete Button -->
						<form action="DeleteBookServlet" method="post"
							style="display: inline;">
							<input type="hidden" name="bid" value="<%=book.getBid()%>">
							<button type="submit" class="delete-btn">Delete</button>
						</form>
					</td>
				</tr>
				<%
					}
				%>
			</table>
			<div class="link">
				<a href="dashboard.html">Go Back</a>
			</div>
		</center>
	</div>
</body>
</html>
