package DBconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyDB {
    public static Connection CreateConnect(){
        Connection conn = null;
        String URL = "jdbc:postgresql://ec2-44-196-96-149.compute-1.amazonaws.com:5432/dffm6kpq4gbmr0";
        String USER = "piqqqqostazinc";
        String PASSWD = "82a7f54890f8cbfd513a958516398369c29f216ae38743933f63ffc800a78fa4";

        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWD);
        }
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }
}
