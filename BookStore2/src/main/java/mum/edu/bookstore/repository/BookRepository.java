package mum.edu.bookstore.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mum.edu.bookstore.domain.Author;
import mum.edu.bookstore.domain.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Long>{
	
	public Book findBookByTitle(String title);
	
	public Book findBookById(long id);
	
	public Book findBookByAuthor(Author author);
	
	public List<Book> findBookByGenre(String genre);
	
}
