package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDao;
import com.entity.Book;

public class UpdateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateBookServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int bid = Integer.parseInt(request.getParameter("bid"));
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		double price = Double.parseDouble(request.getParameter("price"));

		Book book = new Book(bid, title, author, price);
		BookDao.updateBook(book);
		response.sendRedirect("success.jsp");

		doGet(request, response);
	}

}
