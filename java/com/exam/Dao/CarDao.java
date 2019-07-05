/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;

import com.exam.Car;
import com.exam.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author USER
 */
public class CarDao {
      public void dodep(Car c){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.getTransaction().begin();
        s.save(c);
        s.getTransaction().commit();
        s.close();
    }
    
public void carPro(Car c){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.getTransaction().begin();
        s.update(c);
        s.getTransaction().commit();
        s.close();
    }

///////////card 
 



    
public void cades(Car c){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.getTransaction().begin();
        s.delete(c);
        s.getTransaction().commit();
        s.close();
    }

   
public List<Car> See(){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        List<Car>ll=new ArrayList<>();
        Query q = s.createQuery("from Car");
        ll=q.list();
        s.close();
        return ll;
    }
  
public List<Car>dekhc(Car k){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        List<Car>ll=new ArrayList<>();
        Query q =s.createQuery("from Car Where carname='"+k.getCarname()+"' and carcolour='"+k.getCarcolour()+"'");
        ll=q.list();
        
        s.close();
        return ll;
    }

public List<Car> getOneCar(String id){
    Session ses = NewHibernateUtil.getSessionFactory().openSession();
    ses.getTransaction().begin();
    Query q = ses.createQuery("from Car where id=:a");
    q.setString("a", id);
    List<Car> list = new ArrayList<>();
    list = q.list();
    return list;
}

}
