/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;


import com.exam.NewHibernateUtil;
import com.exam.Valid;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Dipty
 */
public class ValidDao {
      public void gupt(Valid ma){
        
        
        Session il=NewHibernateUtil.getSessionFactory().openSession();
        il.getTransaction().begin();
       il.save(ma);
       il.getTransaction().commit();
       il.close();
    }
      public List<Valid>visio(){
          
          Session zz =NewHibernateUtil.getSessionFactory().openSession();
          List<Valid>mon= new ArrayList<>();
          Query q=zz.createQuery("From Valid");
          mon=q.list();
          zz.close();
          return mon;
      }
   
    
}
