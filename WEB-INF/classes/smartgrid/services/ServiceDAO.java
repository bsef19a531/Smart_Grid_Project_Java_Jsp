package smartgrid.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ServiceDAO {
    private static Connection con;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/smartgrid", "root", "root");
        } catch ( Exception ex ) {
            ex.printStackTrace();
        }
    }

    public static ArrayList<ServiceType> getServiceTypes() {
        ArrayList<ServiceType> data = new ArrayList<ServiceType>();

        try {
            String query = "SELECT * FROM service_type;";
            PreparedStatement statement = con.prepareStatement(query);
            ResultSet rs = statement.executeQuery();

            while ( rs.next() ) {
                data.add( new ServiceType( rs.getString( "name" ) ) );
            }

        } catch ( Exception ex ) {
            ex.printStackTrace();
        }

        return data;
    }

    public static ArrayList<SingleService> getAllServices(String service_type) {
        ArrayList<SingleService> data = new ArrayList<SingleService>();

        try {
            String query = "SELECT * FROM services WHERE service_type LIKE ?;";
            PreparedStatement statement = con.prepareStatement(query);
            statement.setString( 1, service_type );
            ResultSet rs = statement.executeQuery();

            while ( rs.next() ) {
                data.add( 
                    new SingleService(
                        rs.getInt( "id" ),
                        rs.getString( "name" ), 
                        "Provider",
                        rs.getString( "description" ), 
                        rs.getInt( "rating" )
                    ) 
                );
            }

        } catch ( Exception ex ) {
            ex.printStackTrace();
        }

        return data;
    }

    public static SingleService getSingleService(int id) {
        SingleService service = null;

        try {
            String query = "SELECT * FROM services WHERE id = ?;";
            PreparedStatement statement = con.prepareStatement(query);
            statement.setInt( 1, id );
            ResultSet rs = statement.executeQuery();

            if ( rs.next() ) {
                service = new SingleService(
                    rs.getInt( "id" ),
                    rs.getString( "name" ), 
                    "Provider",
                    rs.getString( "description" ), 
                    rs.getInt( "rating" )
                );
            }

        } catch ( Exception ex ) {
            ex.printStackTrace();
        }

        return service;
    }
}