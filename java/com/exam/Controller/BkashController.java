/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Controller;

import com.exam.Bkash;
import com.exam.Dao.BkashDao;
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
public class BkashController {
    
    
    @RequestMapping("bks.htm")
    public String balance(@ModelAttribute("bkash")Bkash bka, Model m){
       BkashDao bks = new BkashDao();
      bks.balance(bka);
      List<Bkash>eye=bks.Eyeb();
      m.addAttribute("eye", eye);
        return "bkash";
    }
    
     
    @RequestMapping("eye.htm")
    public String Eyeb(@ModelAttribute("bkash")Bkash bka, Model m){
       BkashDao nn= new BkashDao();
   
      List<Bkash>ey = nn.Eyeb();
      m.addAttribute("list", ey);
        return "eyebkash";
    }
    
    
    
    
    
    
    
    
}
