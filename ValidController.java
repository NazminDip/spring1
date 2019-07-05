/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Controller;

import com.exam.Dao.ValidDao;
import com.exam.Valid;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Dipty
 */
@Controller
public class ValidController {
    @RequestMapping("credit.htm")
    public String gupt(@ModelAttribute("valid")Valid gd, Model m){
        ValidDao ji = new ValidDao();
        ji.gupt(gd);
        List<Valid>hh=ji.visio();
        m.addAttribute("list", hh);
        return "credit";
        
    }
        
        
    
    @RequestMapping("kana.htm")
    public String visio(@ModelAttribute("valid")Valid gadha, Model m){
        ValidDao ai= new ValidDao();
        List<Valid>po=ai.visio();
        m.addAttribute("list",po);
        return "creditdekh";
    
}
}
   
   
    
    
    
    
    
    
    
    