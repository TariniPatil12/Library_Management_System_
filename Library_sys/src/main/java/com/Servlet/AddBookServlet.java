package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDao;
import com.entity.Book;

public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BookDao bdao = new BookDao();

	public AddBookServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String title = request.getParameter("title");
		String author = request.getParameter("author");
		double price = Double.parseDouble(request.getParameter("price"));

		Book book = new Book(title, author, price);
		boolean res = bdao.save(book);

		if (!res) {
			System.out.println("Book Added Successfully");
			response.sendRedirect("Booklist.jsp");
		} else {
			response.sendRedirect("Error.jsp");

		}
		doGet(request, response);
	}

}
