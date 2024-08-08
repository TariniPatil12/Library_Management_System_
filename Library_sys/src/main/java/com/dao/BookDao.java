package com.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.configuration.HibernateConfiguration;
import com.entity.Book;

public class BookDao {
	// add book
	public static boolean save(Book book) {

		Session ses = HibernateConfiguration.getSessionFactory().openSession();
		Transaction tr = ses.beginTransaction();

		ses.save(book);
		tr.commit();
		ses.close();
		return false;
	}

	// show booklist
	public static List<Book> booksList() {
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		TypedQuery<Book> query = session.createQuery("from Book", Book.class);
		List<Book> booklist = query.getResultList();
		session.close();

		return booklist;
	}

	// update book details
	public static void updateBook(Book book) {

		Session ses = HibernateConfiguration.getSessionFactory().openSession();
		Transaction tr = ses.beginTransaction();

		ses.update(book);
		tr.commit();
		ses.close();
	}

	// get book by Id
	public static Book getBookById(int bid) {
		try (Session session = HibernateConfiguration.getSessionFactory().openSession()) {
			return session.get(Book.class, bid);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// Delete a book by its ID
	public static boolean deleteBook(int id) {
		Transaction transaction = null;
		try (Session session = HibernateConfiguration.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();
			Book book = session.get(Book.class, id);
			if (book != null) {
				session.delete(book);
				transaction.commit();
				return true;
			}
			return false;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
			return false;
		}
	}
}
