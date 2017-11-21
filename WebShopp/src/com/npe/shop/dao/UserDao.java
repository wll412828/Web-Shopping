package com.npe.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.npe.shop.bean.UserBean;
import com.npe.shop.db.DataBaseUtil;

public class UserDao {
	public boolean isUserExist(String username) {
        //create a connection
        Connection connection = DataBaseUtil.getConnection();

        String sql ="select * from user WHERE UserName=?";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet resultSet = ps.executeQuery();
            if(!resultSet.next()) {
                return true;
            }
        }catch(SQLException e) {
            System.out.println(e.toString());
            e.printStackTrace();
        }finally {
            DataBaseUtil.closeConnection(connection);
        }
        return false;
    }

    public boolean isPasswordConfirm(String password, String repassword) {
        return password.equals(repassword);
    }

    public void saveUser(UserBean user) {
        Connection connection = DataBaseUtil.getConnection();

        String sql = "insert into user (UserName, UserPwd, UserRealName, UserSex, UserIdcard, UserMobile) values(?,?,?,?,?,?) ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getUserPwd());
            ps.setString(3,user.getUserRealName());
            ps.setString(4,user.getUserSex());
            ps.setString(5,user.getUserIdcard());
            ps.setString(6,user.getUserMobile());
            

            ps.executeUpdate();
        }catch(SQLException e) {
            e.printStackTrace();
        }finally {
            DataBaseUtil.closeConnection(connection);
        }
    }
}
