/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import java.sql.*;
import javax.swing.JOptionPane;
import util.ConectaBD;
/**
 *
 * @author alunocmc
 */
public class EditarDAO {
    
    public EditarDAO(){
        
    }
    
    Connection conexao;
    PreparedStatement sql;
    
    public void Editar(String nm,String mail, int r1, int r2, int r3, int r4){
        
        try{
            conexao=ConectaBD.conectar();
            sql=conexao.prepareStatement("update pesquisa set email=?,R1=?,R2=?,R3=?,R4=? where nome=?");
            sql.setString(1, mail);
            sql.setInt(2, r1);
            sql.setInt(3, r2);
            sql.setInt(4, r3);
            sql.setInt(5, r4);
            sql.setString(6, nm);
            int verifica=sql.executeUpdate();
            if (verifica>0){
                JOptionPane.showMessageDialog(null,"Alteração Efetuada !!!");
            }
            else{
               JOptionPane.showMessageDialog(null,"Registro não encontrado !!!"); 
            }
            
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"erro: "+e);
        }
    }
    
    
}
