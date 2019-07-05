/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.Dao;

import com.exam.Book;
import com.exam.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author USER
 */
public class BookDao {

    public void bookkeep(Book bb) {
        Session bk = NewHibernateUtil.getSessionFactory().openSession();
        bk.getTransaction().begin();
        bk.save(bb);
        bk.getTransaction().commit();
        bk.close();
    }

    public void bookDel(Book bb) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.getTransaction().begin();
        s.delete(bb);
        s.getTransaction().commit();
        s.close();
    }

    public void bookUpdate(Book bb) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.getTransaction().begin();
        s.update(bb);
        s.getTransaction().commit();
        s.close();
    }

    public List<Book> bookshow() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();

        List<Book> list = new ArrayList<>();
        Query q = ses.createQuery("from Book");
        list = q.list();
        ses.close();
        return list;

    }

    public List<Book> bookSearch(Book f) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();

        List<Book> keep = new ArrayList<>();
        Query q = ses.createQuery("From Book where cname='" + f.getCname() + "'");

        keep = q.list();
        ses.close();
        return keep;

    }

    public List<Book> bookSearch2(Book g) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();

        List<Book> ke = new ArrayList<>();
        Query q = ses.createQuery("From Book where cname='" + g.getCname() + "'");

        ke = q.list();
        ses.close();
        return ke;

    }

}
