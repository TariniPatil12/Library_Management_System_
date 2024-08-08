package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDao;

public class DeleteBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteBookServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int bid = Integer.parseInt(request.getParameter("bid"));
		if (BookDao.deleteBook(bid)) {
			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("Error.jsp");
		}

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
