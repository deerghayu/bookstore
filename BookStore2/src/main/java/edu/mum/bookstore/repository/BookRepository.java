package edu.mum.bookstore.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.mum.bookstore.domain.Author;
import edu.mum.bookstore.domain.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Long>{
	
	public Book findBookByTitle(String title);
	
	public Book findBookById(long id);
	
	public Book findBookByAuthor(Author author);
	
	public List<Book> findBookByGenre(String genre);
	
}
