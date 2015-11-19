package mum.edu.bookstore.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import mum.edu.bookstore.domain.Author;
import mum.edu.bookstore.domain.Book;
import mum.edu.bookstore.service.BookService;

@Controller
public class BookController {

	@Autowired
	BookService bookService;

	@RequestMapping("/book")
	public String getBookByTitle(String title, Model model) {
		Book book = bookService.findBookById(1);
		model.addAttribute("book", book);
		return "book";
	}

	@RequestMapping(value = "/addBook", method = RequestMethod.GET)
	public String addBookGet(@ModelAttribute Book book) {
		return "addBook";
	}

	@RequestMapping(value = "/addBook", method = RequestMethod.POST)
	public String addBookPost(@Valid @ModelAttribute Book book, BindingResult result, RedirectAttributes redirect,
			Model model) {
		if (result.hasErrors()) {
			return "addBook";
		} else {
			bookService.save(book);
			List<Book> books = bookService.findAllBooks();
			redirect.addFlashAttribute("books", books);
			return "redirect:/getAllBooks";
		}
	}

	@RequestMapping("/getAllBooks")
	public String getAllBooks(Model model) {
		List<Book> books = bookService.findAllBooks();
		model.addAttribute("books", books);
		return "viewAllBooks";
	}

	@RequestMapping("/bookByAuthor")
	public String getBookByAuthor(Model model) {
		Author author = new Author();
		author.setId(2);
		author.setFirstName("Test Author");
		author.setLastName("test");
		Book book = bookService.findBookByAuthor(author);
		model.addAttribute("book", book);
		return "book";
	}

	@RequestMapping("/deleteBook")
	public String deleteBook(@RequestParam("bookId") long id) {
		bookService.delete(id);
		return "redirect:/getAllBooks";
	}

	@RequestMapping("/findBook")
	public String findBookByGenre(@ModelAttribute("genre") String genre, Model model) {
		List<Book> bookByGenre = bookService.findBookByGenre(genre);
		model.addAttribute("books",bookByGenre);
		return "viewAllBooks";
	}
}
