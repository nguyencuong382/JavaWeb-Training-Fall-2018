/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Users;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class UserDAO {
    
    public List<Users> getAllUsers() throws Exception {
        Connection connect = new DBContext().getConnection();
        String query = "select * from users";
        PreparedStatement ps = connect.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        List<Users> users = new ArrayList<>();
        
        while(rs.next()){
            String userName = rs.getString("usErname");
            String password = rs.getString("password");
            users.add(new Users(userName, password));
        }
        
        ps.close();
        connect.close();
        
        return users;
    }
    
    
    
}
