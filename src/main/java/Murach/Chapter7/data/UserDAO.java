package Murach.Chapter7.data;

import Murach.Chapter7.business.UserEntity;
import Murach.jdbc.HibernateUntils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    public static List<UserEntity> getAll(){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        List<UserEntity> alist = new ArrayList<>();
        try {
            String query ="FROM UserEntity ";
            Query<UserEntity> UserEntityQuery = session.createQuery(query);
            alist = UserEntityQuery.getResultList();
            transaction.commit();
        }catch (Exception e){
            System.out.println("loi"+e);
        }finally {
            session.close();
        }
        return alist;
    }
    public static List<UserEntity> getOne(String email){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        List<UserEntity> alist = new ArrayList<>();
        try {
            String query ="FROM UserEntity user where user.email =: email ";
            Query<UserEntity> UserEntityQuery = session.createQuery(query);
            alist = UserEntityQuery.getResultList();
        }catch (Exception e){
            System.out.println("loi: "+e);
        }finally {
            session.close();
        }
        return alist;
    }

    public static Boolean insertUser(UserEntity user){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.save(user);
            transaction.commit();
        }catch (Exception e){
            System.out.println("Loi o day"+e.toString());
            return false;
        }finally {
            session.close();
        }
        return true;
    }

    public static Boolean deleteUser(UserEntity user){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.delete(user);
            transaction.commit();

        }catch (Exception e){
            System.out.println("LLooix roi"+e.toString());
            return false;
        }finally {
            session.close();
        }
        return true;
    }

    public static Boolean updateUser(UserEntity user){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.update(user);
            transaction.commit();
        }catch (Exception e){
            System.out.println(e.toString());
            return false;
        }finally {
            session.close();
        }
        return true;
    }
}
