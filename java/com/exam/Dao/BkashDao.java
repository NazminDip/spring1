/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;

import com.exam.Bkash;
import com.exam.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author USER
 */
public class BkashDao {
    public void balance(Bkash sh){
        
        
        Session ss =NewHibernateUtil.getSessionFactory().openSession();
        ss.getTransaction().begin();
        ss.save(sh);
        ss.getTransaction().commit();
        ss.close();
    }
    
    public List<Bkash>Eyeb(){
        Session tt= NewHibernateUtil.getSessionFactory().openSession();
     
        
        List<Bkash>besi= new ArrayList<>();
        Query q=tt.createQuery("from Bkash");
        
       besi=q.list();
        tt.close();
        return besi;
    }
}
