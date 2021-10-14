
package Modelo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    
    protected Connection con;
    protected Statement stmt;
    private final String url = "";
    private final String dbms = "";
    private final String port = "";
    private final String database = "";
    private final String username = "";
    private final String password = "";

    public Conexion() {
        
    }
    
    public Connection conectar(){
        try {
            con = DriverManager.getConnection("jdbc:"+dbms+"://"+url+":"+port+"/"+database,username,password);
            stmt = con.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }

    public Statement getStmt() {
        return stmt;
    }
    
    public void Desconectar(){
        try {
            con.close();
            stmt.close();
            System.out.println("desconectado con base de datos.");
        } catch (SQLException ex) {
            System.out.println("Error al desconectar base de datos.");
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}
