package edu.mum.bookstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.bookstore.domain.Author;
import edu.mum.bookstore.domain.Book;
import edu.mum.bookstore.repository.BookRepository;

@Service
public class BookService {

	@Autowired
	BookRepository bookRepository;

	public Book findBookByTitle(String title) {
		return bookRepository.findBookByTitle(title);
	}

	public Book findBookById(long id) {
		return bookRepository.findBookById(id);
	}

	public List<Book> findAllBooks() {
		return bookRepository.findAll();
	}

	public Book findBookByAuthor(Author author) {
		return bookRepository.findBookByAuthor(author);
	}

	public void save(Book book) {
		bookRepository.save(book);
	}

	public void delete(long id) {
		Book book = bookRepository.findBookById(id);
		bookRepository.delete(book);
	}

	public List<Book> findBookByGenre(String genre) {
		return bookRepository.findBookByGenre(genre);
	}
}
