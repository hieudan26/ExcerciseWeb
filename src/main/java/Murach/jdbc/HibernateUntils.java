package Murach.jdbc;
import Murach.Cart.business.ProductEntity;
import Murach.Chapter7.business.UserEntity;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;

import java.util.Properties;

public class HibernateUntils {
    public static SessionFactory sessionFactory;

    public static SessionFactory getSessionFactory(){
        if(sessionFactory == null){
            System.out.println("Factory created success 1");
                Configuration cfg = new Configuration();
                Properties setting = new Properties();



                setting.setProperty(Environment.DRIVER,"org.postgresql.Driver");
                System.out.println("Factory created success 2");
                setting.setProperty(Environment.URL,"jdbc:postgresql://ec2-44-196-96-149.compute-1.amazonaws.com:5432/dffm6kpq4gbmr0");
                setting.setProperty(Environment.USER,"piqqqqostazinc");
                setting.setProperty(Environment.PASS,"82a7f54890f8cbfd513a958516398369c29f216ae38743933f63ffc800a78fa4");
                setting.setProperty(Environment.DIALECT,"org.hibernate.dialect.PostgreSQLDialect");

                setting.put(Environment.SHOW_SQL,"true");
                setting.put(Environment.CURRENT_SESSION_CONTEXT_CLASS,"thread");
                setting.put(Environment.HBM2DDL_AUTO,"none");
                cfg.setProperties(setting);
                cfg.addAnnotatedClass(ProductEntity.class);
                cfg.addAnnotatedClass(UserEntity.class);
                StandardServiceRegistry serviceRegistry =  new StandardServiceRegistryBuilder()
                        .applySettings(cfg.getProperties()).build();

                sessionFactory = cfg.buildSessionFactory(serviceRegistry);
                System.out.println("Factory created success 4");
        }
        return sessionFactory;
    }
}
