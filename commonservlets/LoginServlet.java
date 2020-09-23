/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package commonservlets;

import database.DBCon;khkjh
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Suthura
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        try {

            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            String dbemail = null;
            String dbPassword = null;
            String dbtype = null;
            String name = null;
            String uid = null;
            
            String hashed = MD5(password);

            DBCon obj_DB_Connection = new DBCon();
            Connection connection = obj_DB_Connection.get_connection();
            PreparedStatement ps = null;
            ResultSet rs = null;

            String sql = "select email , name  ,usertype , password, id from users where email=? and password=?";
            Class.forName("com.mysql.jdbc.Driver");
            ps = connection.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, hashed);
            rs = ps.executeQuery();
            while (rs.next()) {
                dbemail = rs.getString(1);
                name = rs.getString(2);
                dbtype = rs.getString(3);
                dbPassword = rs.getString(4);
                uid = rs.getString(5);
            }
            if (email.equals(email) && hashed.equals(dbPassword)) {

                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                session.setAttribute("usertype", dbtype);
                session.setAttribute("username", name);
                session.setAttribute("uid", uid);

                if (dbtype.equals("manager")) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("location='admin/home-pending.jsp';");
                    out.println("</script>");
                } else if (dbtype.equals("member")) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("location='member/memberhome.jsp';");
                    out.println("</script>");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("location='trainer/trainerhome.jsp';");
                    out.println("</script>");
                }

            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Username Or Password is wrong !!');");
                out.println("location='index.jsp';");
                out.println("</script>");
            }

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
