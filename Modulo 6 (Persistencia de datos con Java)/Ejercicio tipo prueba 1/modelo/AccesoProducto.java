
package modelo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AccesoProducto extends Conexion {
    
    private ResultSet resultado;

    public AccesoProducto() {
        super.conectar();
    }
    
    //metodo CRUD - Read
    public ResultSet listarProducto(){
        try {
            super.getStmt();
            resultado = stmt.executeQuery("Select * from producto");
        } catch (SQLException ex) {
            Logger.getLogger(AccesoProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }
    
    //metodo CRUD - Create
    public void ingresarProducto(String modelo, String procesador,int ram,int disco,int precio,int categoria_id){
        try {
            super.getStmt();
            stmt.executeUpdate("Insert into producto (modelo, procesador, ram, disco, precio, categoria_id) "
                    + "values ('"+modelo+"','"+procesador+"',"+ram+","+disco+","+precio+","+categoria_id+")");
            System.out.println("Ingresado con exito!");
        } catch (SQLException ex) {
            System.out.println("error al ingresar!");
            Logger.getLogger(AccesoProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //metodo CRUD - Update
    public void actualizarProducto(int id, String modelo, String procesador,int ram,int disco,int precio,int categoria_id){
        try {
            super.getStmt();
            stmt.executeUpdate("Update producto set "
                    + "modelo='"+modelo+"', "
                    + "procesador='"+procesador+"', "
                    + "ram="+ram+", "
                    + "disco="+disco+", "
                    + "precio="+precio+", "
                    + "categoria_id="+categoria_id+" where id="+id);
            System.out.println("Actualizado con exito!");
        } catch (SQLException ex) {
            System.out.println("error al actualizar!");
            Logger.getLogger(AccesoProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //metodo CRUD - Delete
    public void eliminarProducto(int id){
        try {
            super.getStmt();
            stmt.executeUpdate("Delete from producto where id="+id);
            System.out.println("Eliminado con exito!");
        } catch (SQLException ex) {
            System.out.println("error al eliminar!");
            Logger.getLogger(AccesoProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //metodo busqueda por existencia
    public ResultSet existencia(int id){
        try {
            super.getStmt();
            resultado = stmt.executeQuery("Select * from producto where id="+id);
        } catch (SQLException ex) {
            Logger.getLogger(AccesoProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }
    
    
}
