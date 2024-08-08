package com.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDao;
import com.entity.Book;

public class ShowBooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BookDao bdao = new BookDao();

	public ShowBooksServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Book> books = bdao.booksList();
		request.setAttribute("books", books);
		request.getRequestDispatcher("Booklist.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
