
package modelo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AccesoCategoria extends Conexion {
    
    private ResultSet resultado;

    public AccesoCategoria() {
        super.conectar();
    }
    
    //metodo CRUD - Read
    public ResultSet listarCategoria(){
        try {
            super.getStmt();
            resultado = stmt.executeQuery("Select * from categoria");
        } catch (SQLException ex) {
            Logger.getLogger(AccesoCategoria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }
    
    //metodo CRUD - Create
    public void ingresarCategoria(String nombre){
        try {
            super.getStmt();
            stmt.executeUpdate("Insert into categoria (nombre) "
                    + "values ('"+nombre+"')");
            System.out.println("Ingresado con exito!");
        } catch (SQLException ex) {
            System.out.println("error al ingresar!");
            Logger.getLogger(AccesoCategoria.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //metodo CRUD - Update
    public void actualizarCategoria(int id, String nombre){
        try {
            super.getStmt();
            stmt.executeUpdate("Update categoria set "
                    + "nombre='"+nombre+"'"
                    +" where id="+id);
            System.out.println("Actualizado con exito!");
        } catch (SQLException ex) {
            System.out.println("error al actualizar!");
            Logger.getLogger(AccesoCategoria.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //metodo CRUD - Delete
    public void eliminarCategoria(int id){
        try {
            super.getStmt();
            stmt.executeUpdate("Delete from categoria where id="+id);
            System.out.println("Eliminado con exito!");
        } catch (SQLException ex) {
            System.out.println("error al eliminar!");
            Logger.getLogger(AccesoCategoria.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //metodo busqueda por existencia
    public ResultSet existencia(int id){
        try {
            super.getStmt();
            resultado = stmt.executeQuery("Select * from categoria where id="+id);
        } catch (SQLException ex) {
            Logger.getLogger(AccesoCategoria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }
    
    
}
