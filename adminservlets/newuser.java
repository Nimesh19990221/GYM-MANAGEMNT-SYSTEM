/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets;

import database.DBCon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Suthura
 */
public class newuser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            String email = request.getParameter("email");
            String uname = request.getParameter("uname");
            String utype = request.getParameter("utype");
            String pass = request.getParameter("pass");

            DBCon obj_DB_Connection = new DBCon();
            Connection connection = obj_DB_Connection.get_connection();
            PreparedStatement ps = null;

            String sql = "insert into users ( `email`, `name`, `usertype`, `password`) values(?,?,?,?)";
            Class.forName("com.mysql.jdbc.Driver");

            ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, uname);
            ps.setString(3, utype);
            ps.setString(4, MD5(pass));

            ps.executeUpdate();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Registration Completed Successfully !!');");
            out.println("location='admin/home-users.jsp';");
            out.println("</script>");

        } catch (SQLException ex) {
            out.println(ex);
        } catch (ClassNotFoundException ex) {
            out.println(ex);
        }
    }

    public String MD5(String md5) {
        try {
            java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
            byte[] array = md.digest(md5.getBytes());
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < array.length; ++i) {
                sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1, 3));
            }
            return sb.toString();
        } catch (java.security.NoSuchAlgorithmException e) {
        }
        return null;
    }

}
