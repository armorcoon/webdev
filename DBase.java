/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DBase;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

public class DBase {

    private DataSource dataSource;

    public DBase(DataSource ds) {
        this.dataSource = ds;
    }

    //input to database 
    public void setdatabase(Integer idproduct, String name, Integer number, Double price) {
        PreparedStatement pStatement = null;
        try {
            Connection connection = dataSource.getConnection();

            pStatement = connection.prepareStatement("insert into STOCK(ID,NAME,NUMBER,PRICE) values(?,?,?,?)");

            pStatement.setInt(1, idproduct);
            pStatement.setString(2, name);
            pStatement.setInt(3, number);
            pStatement.setDouble(4, price);

            pStatement.executeUpdate();
            System.out.println("data has been inserted");

            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Boolean authenticate(String id, String password) {
        boolean matched = false;
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(
                    "select * from USERS where "
                    + "CAST(ID as varchar(128))='" + id + "' and "
                    + "CAST(PASSWORD as varchar(128))='" + password
                    + "'");
            ResultSet resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                matched = true;
            }
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return matched;
    }

    public void retrivepassword() {

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(
                    "SELECT * FROM STOCK");
            ResultSet resultSet = pStatement.executeQuery();
            while (resultSet.next()) {

            }
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
