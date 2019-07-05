/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Controller;

import com.exam.Car;
import com.exam.Dao.CarDao;
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
public class CarController {
 
    @RequestMapping("deposit.htm")
public String cardep(@ModelAttribute("car")Car cc, Model m){
    CarDao d = new CarDao();
    d.dodep(cc);
    
    return "carform";
    }


    @RequestMapping("prosper.htm")
public String carsee(@ModelAttribute("car")Car cc, Model m){
    CarDao cd = new CarDao();
 
     List<Car>ll=cd.See();
    m.addAttribute("list", ll);
    return "carsee";
    
    }






    @RequestMapping("card.htm")
public String cardes(@ModelAttribute("car")Car cc, Model m){
    CarDao cd = new CarDao();
    cd.cades(cc);
     List<Car>ll=cd.See();
    m.addAttribute("list", ll);
    return "carsee";
    
    }

    @RequestMapping("carkhoz.htm")
public String dekc(@ModelAttribute("car")Car cc, Model m){
    CarDao cd = new CarDao();
 
     List<Car>ll=cd.dekhc(cc);
    m.addAttribute("list", ll);
    return "cardetail";
    
    }


    @RequestMapping("carup.htm")
    public String carup(@ModelAttribute("car") Car cc, Model m) {
        return "upcar";
    }

@RequestMapping("upcar.htm")
public String carPro(@ModelAttribute("car")Car cc, Model m){
   CarDao cd = new CarDao();
   cd.carPro(cc);
    List<Car>ll=cd.See();
    m.addAttribute("list", ll);
    return "carsee";
    }
////////////////////

//@RequestMapping("upcar.htm")
//public String carPr(@ModelAttribute("car")Car cc, Model m){
  // CarDao cd = new CarDao();
  // cd.carPro(cc);
   // List<Car>ll=cd.See();
   // m.addAttribute("list", ll);
  //  return "card3";
   // }


}
