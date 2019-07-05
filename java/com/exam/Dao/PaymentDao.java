/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;

import com.exam.NewHibernateUtil;
import com.exam.Payment;


import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author USER
 */
public class PaymentDao {
       
  public void doRakhi(Payment vp){
      
      Session sos= NewHibernateUtil.getSessionFactory().openSession();
      sos.getTransaction().begin();
      sos.save(vp);
      sos.getTransaction().commit();
      sos.close();
  }
  public List<Payment>Chokh(){
      Session  mn=NewHibernateUtil.getSessionFactory().openSession();
      List<Payment>rek=new ArrayList<>();
      Query q = mn.createQuery("from Payment");
      rek=q.list();
      mn.close();
      return rek;
      
  }
   public void Nosto(Payment vp){
      
      Session sos= NewHibernateUtil.getSessionFactory().openSession();
      sos.getTransaction().begin();
      sos.delete(vp);
      sos.getTransaction().commit();
      sos.close();
  } 

  
   

   
}
