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
public class DeclineReservation extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        	String req_id_val = request.getParameter("req_id");
       	
                DBCon obj_DB_Connection = new DBCon();
                Connection connection = obj_DB_Connection.get_connection();
                PreparedStatement ps = null;
                
                String sql = "UPDATE reservations SET status = 'declined' WHERE id = ? ";
                Class.forName("com.mysql.jdbc.Driver");

                ps = connection.prepareStatement(sql);
                ps.setString(1, req_id_val);                
                ps.executeUpdate();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Reservation Declined !');");
                out.println("location='admin/home-pending.jsp';");
                out.println("</script>");


        } catch (SQLException ex) {
            out.println(ex);
        } catch (ClassNotFoundException ex) {
            out.println(ex);
        }
	}

}
