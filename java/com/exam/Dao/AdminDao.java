/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;

import com.exam.Admin;
import com.exam.Book;
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
public class AdminDao {
    
    public boolean CheckUser(String email, String pass){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
       Query q=s.createQuery("from Admin where email='"+email+"' and password='"+pass+"'");
       List<Admin>li=new ArrayList<>();
       li=q.list();
       if(li.size()>0){
           
           return true;
       }else{
           return false;
       }
    } 
    
    
    
    public void doSave(Admin ad){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.getTransaction().begin();
        s.save(ad);
        s.getTransaction().commit();
        s.close();
    }
     
public List<Book>Sawbook(){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        List<Book>bl=new ArrayList<>();
        Query q = s.createQuery("from Book");
        bl=q.list();
        
        s.close();
        return bl;
    }


       
    }  
    
    
    

    
    
    
    
    
    
    
    
    



    
    
    
    
    
    
    
    
    
    
