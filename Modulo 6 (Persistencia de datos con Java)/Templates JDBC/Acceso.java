
package Modelo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Acceso extends Conexion {
    
    private ResultSet resultado;

    public Acceso() {
        super.conectar();
    }
    
    //metodo CRUD - Read
    public ResultSet listar(){
        try {
            super.getStmt();
            resultado = stmt.executeQuery("Select * from tabla");
        } catch (SQLException ex) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }
    
    //metodo CRUD - Create
    public void ingresar(int codigo, String var_string, int var_int){
        try {
            super.getStmt();
            stmt.executeUpdate("Insert into tabla "
                    + "values ('"+var_string+"',"+var_int+")");
            System.out.println("Ingresado con exito!");
        } catch (SQLException ex) {
            System.out.println("error al ingresar!");
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //metodo CRUD - Update
    public void actualizar(int codigo, String var_string, int var_int){
        try {
            super.getStmt();
            stmt.executeUpdate("Update tabla set "
                    + "columna_string='"+var_string+"', "
                    + "columna_int="+var_int+" where cod_pro="+codigo);
            System.out.println("Actualizado con exito!");
        } catch (SQLException ex) {
            System.out.println("error al actualizar!");
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //metodo CRUD - Delete
    public void eliminar(int codigo){
        try {
            super.getStmt();
            stmt.executeUpdate("Delete from tabla where columna="+codigo);
            System.out.println("Eliminado con exito!");
        } catch (SQLException ex) {
            System.out.println("error al eliminar!");
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //metodo busqueda por existencia
    public ResultSet existencia(int codigo){
        try {
            super.getStmt();
            resultado = stmt.executeQuery("Select * from tabla where columna="+codigo);
        } catch (SQLException ex) {
            Logger.getLogger(Acceso.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }
    
    
}
