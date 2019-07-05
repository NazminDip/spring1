/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Controller;

import com.exam.Book;
import com.exam.Car;
import com.exam.Dao.BookDao;
import com.exam.Dao.CarDao;
import com.exam.Dao.UserDao;
import com.exam.User;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author USER
 */
@Controller
public class UserController {

    CarDao cd = new CarDao();
    BookDao bd = new BookDao();

    @RequestMapping("use.htm")
    public String Save(@Valid @ModelAttribute("user") User uu, BindingResult result, Model m) {
//public String Save(@ModelAttribute("user")User uu ,Model m){
        UserDao dd = new UserDao();
        if (result.hasErrors()) {
            return "saveuser";
        }
        UserDao ld = new UserDao();
        ld.Save(uu);
        List<User> list = ld.showAll();
        m.addAttribute("list", list);
        return "welcome";
    }

    @RequestMapping("find.htm")
    public String doUser(@ModelAttribute("user") User u, Model m) {
        UserDao da = new UserDao();
        if (da.findUser(u.getEmail(), u.getPassword())) {
            return "userresult";
        } else {
            return "index_1";
        }
    }

    @RequestMapping("show.htm")

    public String showAll(@ModelAttribute("user") User stu, Model m) {
        UserDao pd = new UserDao();

        List<User> list = pd.showAll();
        m.addAttribute("list", list);
        return "showuser";

    }

    @RequestMapping("searchuser.htm")

    public String Search(@ModelAttribute("user") User stu, Model m) {
        UserDao pd = new UserDao();

        List<User> list = pd.doSearch(stu);
        m.addAttribute("list", list);
        return "searchshowp";

    }

    @RequestMapping("del.htm")
    public String doDelete(@ModelAttribute("user") User stu, Model m) {
        UserDao ld = new UserDao();
        ld.doDelete(stu);
        List<User> list = ld.showAll();
        m.addAttribute("list", list);
        return "showuser";
    }

    @RequestMapping("develop.htm")
    public String doUpP(@ModelAttribute("user") User stu, Model m) {
        return "updateuser";
    }

    @RequestMapping("updateuser.htm")
    public String doUpdate(@ModelAttribute("user") User stu, Model m) {
        UserDao ld = new UserDao();
        ld.doUpdate(stu);
        List<User> list = ld.showAll();
        m.addAttribute("list", list);
        return "showuser";
    }

    //----------------------------------------
    @RequestMapping("showCardForBooking.htm")
    public String showAllCar(@ModelAttribute("car") Car c, Model m) {
        System.out.println("BOOKING METHOD CALLED");

        List<Car> list = new ArrayList<>();
        list = cd.See();
        for (int i = 0; i < list.size(); i++) {
            System.out.println("BOOKING\t" + list.get(i).getCarbrand());
        }
        m.addAttribute("allCar", list);
        return "showAllCar";
    }
    List<Car> listOneCar = new ArrayList<>();

    @RequestMapping("bookNow.htm")
    public String bookingACar(@RequestParam("id") String id, Model m) {
        System.out.println("CAR ID " + id);

        listOneCar = cd.getOneCar(id);
        if (listOneCar.get(0).getStatus().equals("NOT AVAILABLE")) {
            List<Car> list = new ArrayList<>();
            list = cd.See();
            m.addAttribute("allCar", list);
            m.addAttribute("msg", "THIS CAR IS NOT AVAILABLE NOW");
            return "showAllCar";
        } else {
            m.addAttribute("aSelectedCar", listOneCar);
            return "bookCar";
        }

    }

    @RequestMapping("saveBooking.htm")
    public String confirmBooking(@ModelAttribute("book") Book b, Model m) {
        bd.bookkeep(b);
        System.out.println("Updating Car Status for \t" + listOneCar.get(0).getId());

        Car car = new Car();
        car.setId(listOneCar.get(0).getId());
        car.setCarname(listOneCar.get(0).getCarname());
        car.setImg(listOneCar.get(0).getImg());
        car.setCarbrand(listOneCar.get(0).getCarbrand());
        car.setPrice(listOneCar.get(0).getPrice());
        car.setCarcolour(listOneCar.get(0).getCarcolour());
        car.setStatus("NOT AVAILABLE");
        car.setFare(listOneCar.get(0).getFare());

        cd.carPro(car);

        List<Car> list = new ArrayList<>();
        list = cd.See();
        m.addAttribute("allCar", list);
        m.addAttribute("msg", "YOUR CAR BOOKING IS SUCCESFUL!");
        return "showAllCar";

    }
}
