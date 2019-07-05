/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Controller;

import com.exam.Book;
import com.exam.Dao.BookDao;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author USER
 */

@Controller
public class BookController {
      
    
@RequestMapping("book.htm")
//public String Save(@Valid@ModelAttribute("user")User uu, BindingResult result ,Model m){
public String bookkeep(@ModelAttribute("book")Book bc ,Model m){
 
        BookDao bd = new BookDao();
     bd.bookkeep(bc);
        List<Book> keep = bd.bookshow();
        m.addAttribute("list", keep);
        return "book";
    } 




    @RequestMapping("meet.htm")

    public String showAll(@ModelAttribute("book") Book bc, Model m) {
       BookDao db = new BookDao();

        List<Book> keep = db.bookshow();
        m.addAttribute("list", keep);
        return "showbook";

    }
     @RequestMapping("lookbook.htm")
    public String bookSearch(@ModelAttribute("book") Book bc, Model m) {
       BookDao db = new BookDao();
        List<Book> keep = db.bookSearch(bc);
        m.addAttribute("list", keep);
        return "bookdetail";

    

    }
    @RequestMapping("lookbook2.htm")
    public String bookSearch2(@ModelAttribute("book") Book bc, Model m) {
       BookDao db = new BookDao();
        List<Book> ke = db.bookSearch(bc);
        m.addAttribute("list", ke);
        return "bookdetail2";

    

    }
    





    @RequestMapping("spoil.htm")
    public String doDelete(@ModelAttribute("book") Book db, Model m) {
  BookDao bd = new  BookDao();
        bd.bookDel(db);
        List<Book> keep = bd.bookshow();
        m.addAttribute("list", keep);
        return "showbook";
    }

    @RequestMapping("upp.htm")
    public String doupp(@ModelAttribute("book") Book db, Model m) {
        return "uppagebook";
    }

    @RequestMapping("uppagebook.htm")
    public String doUpdate(@ModelAttribute("book") Book db, Model m) {
         BookDao bd = new BookDao();
        bd.bookUpdate(db);
        List<Book> keep = bd.bookshow();
        m.addAttribute("list", keep);
        return "showbook";
    } 





}