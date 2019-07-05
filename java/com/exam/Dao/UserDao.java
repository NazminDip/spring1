/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;

import com.exam.NewHibernateUtil;
import com.exam.User;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author USER
 */
public class UserDao {
   public void Save(User uu){
        Session mm = NewHibernateUtil.getSessionFactory().openSession();
        mm.getTransaction().begin();
      mm.save(uu);
       mm.getTransaction().commit();
     mm.close();
    }
    
    public List<User> showAll() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();

        List<User> list = new ArrayList<>();
        Query q = ses.createQuery("from User");
        list = q.list();
        ses.close();
        return list;

    }
    
    public List<User> doSearch(User p) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();

        List<User> list = new ArrayList<>();
        Query q = ses.createQuery("from User where id="+p.getId());
        list = q.list();
        ses.close();
        return list;

    }

   

    public boolean findUser(String email, String pass){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
      Query q=s.createQuery("from User where email='"+email+"' and password='"+pass+"'");
      List<User>lis=new ArrayList<>();
       lis=q.list();
      if(lis.size()>0){
           
           return true;
       }else{
          return false;
       }
       
       
   
    }
    
    
    
    
    
    

    public void doDelete(User p) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.getTransaction().begin();
        s.delete(p);
        s.getTransaction().commit();
        s.close();
    }

    public void doUpdate(User p) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.getTransaction().begin();
        s.update(p);
        s.getTransaction().commit();
        s.close();
    }
    
    
    
    
    
    
     
}
