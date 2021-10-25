package Murach.Cart.data;

import Murach.Cart.business.ProductEntity;
import Murach.Cart.cart.ProductsServlet;
import Murach.jdbc.HibernateUntils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    public static List<ProductEntity> getAll(){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        List<ProductEntity> alist = new ArrayList<>();
        try {
            String query ="FROM ProductEntity ";
            Query<ProductEntity> ProductEntityQuery = session.createQuery(query);
            alist = ProductEntityQuery.getResultList();
            transaction.commit();
        }catch (Exception e){
            System.out.println("loi"+e);
        }finally {
            session.close();
        }
        return alist;
    }
    public static List<ProductEntity> getOne(String code){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        List<ProductEntity> alist = new ArrayList<>();
        try {
            System.out.println("code "+ code.toString());
            String query ="FROM ProductEntity product where product.code =: code ";
            Query<ProductEntity> ProductEntityQuery = session.createQuery(query);
            System.out.println("code "+ code.toString());
            ProductEntityQuery.setParameter("code",code.toString());
            alist = ProductEntityQuery.getResultList();
        }catch (Exception e){
            System.out.println("loi: "+e);
        }finally {
            session.close();
        }
        return alist;
    }

    public static boolean Validate(ProductEntity ProductEntity){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        List<ProductEntity> alist = new ArrayList<>();
        try {
            String query ="SELECT product FROM ProductEntity product where product.code =: code AND product.name =: name";

            Query<ProductEntity> ProductEntityQuery = session.createQuery(query);
            ProductEntityQuery.setParameter("code",ProductEntity.getCode());
            ProductEntityQuery.setParameter("name",ProductEntity.getName());
            alist = ProductEntityQuery.getResultList();
            transaction.commit();
        }catch (Exception e){
            System.out.println("loi"+e);
        }finally {
            session.close();
        }
        System.out.println(alist.toString());
        if(alist == null)
            return false;
        else
            return true;
    }

    public static Boolean insertProduct(ProductEntity product){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.save(product);
            transaction.commit();
        }catch (Exception e){
            System.out.println("Loi o day"+e.toString());
            return false;
        }finally {
            session.close();
        }
        return true;
    }

    public static Boolean deleteProduct(ProductEntity product){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.delete(product);
            transaction.commit();

        }catch (Exception e){
            System.out.println("LLooix roi"+e.toString());
            return false;
        }finally {
            session.close();
        }
        return true;
    }

    public static Boolean updateProduct(ProductEntity product){
        Session session = HibernateUntils.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.update(product);
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
