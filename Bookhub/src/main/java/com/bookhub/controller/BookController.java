// Narayan Das
package com.bookhub.controller;

import com.bookhub.dao.BookRepository;
import com.bookhub.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/book") 
public class BookController {

    @Autowired
    private BookRepository bookRepository; 

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model) {
        model.addAttribute("book", new Book());
        return "addBook"; 
    }

    @PostMapping("/saveBook")
    public String saveBook(@ModelAttribute("book") Book book) {
        bookRepository.save(book); 
        return "redirect:/book/list"; 
    }

    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("bookId") int id, Model model) {
        Book book = bookRepository.findById(id).orElse(null); 
        model.addAttribute("book", book);
        return "addBook"; 
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("bookId") int id) {
        bookRepository.deleteById(id);
        return "redirect:/book/list";
    }

    @GetMapping("/list")
    public String listBooks(Model model) {
        model.addAttribute("books", bookRepository.findAll()); 
        return "viewBooks"; 
    }
}