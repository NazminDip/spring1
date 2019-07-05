/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Controller;

/**
 *
 * @author USER
 */
import com.exam.Admin;
import com.exam.Book;
import com.exam.Car;
import com.exam.Dao.AdminDao;
import com.exam.Dao.BookDao;
import com.exam.Dao.CarDao;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @RequestMapping("check.htm")
    public String doLog(@ModelAttribute("admin") Admin aa, Model m) {
        AdminDao d = new AdminDao();
        if (d.CheckUser(aa.getEmail(), aa.getPassword())) {

            return "adminpage";
        } else {
            return "adminlog";
        }

    }

    @RequestMapping("save.htm")
    public String doSave(@ModelAttribute("admin") Admin aa, Model m) {
        AdminDao d = new AdminDao();
        d.doSave(aa);

        return "adminform";
    }
    
    
    
    

   @RequestMapping("bookall.htm")
public String sawbook(@ModelAttribute("book")Book nn, Model m){
   BookDao bn= new BookDao();
 
     List<Book>lb=bn.bookshow();
    m.addAttribute("list", lb);
    return "showbook";
    
    }

    
    
    
    
    
    
    
    
    
    
    
    

}
