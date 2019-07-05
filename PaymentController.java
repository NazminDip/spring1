/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Controller;

import com.exam.Dao.PaymentDao;
import com.exam.Payment;

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
public class PaymentController {
      
  
@RequestMapping("drkr.htm")
public String doRakhi(@ModelAttribute("payment")Payment vv,Model m){
//public String Save(@ModelAttribute("user")User uu ,Model m){
  PaymentDao  v= new PaymentDao();
     v.doRakhi(vv);
        List<Payment> thala= v.Chokh();
        m.addAttribute("list", thala);
        return "contact";
    } 

    

@RequestMapping("akhi.htm")
public String Chokh(@ModelAttribute("payment")Payment vv,Model m){
PaymentDao  vp= new PaymentDao();
     
        List<Payment> thala = vp.Chokh();
        m.addAttribute("list",thala );
        return "ovijogshow";
    }  

   
    
    
    
    
    
    
    
   

    @RequestMapping("puran.htm")
   
     public String Nosto(@ModelAttribute("payment")Payment vv,Model m){
    PaymentDao  v= new PaymentDao();
   v.Nosto(vv);
        List<Payment> thala= v.Chokh();
        m.addAttribute("list", thala);
        return "ovijogshow";
    }  

    


}
