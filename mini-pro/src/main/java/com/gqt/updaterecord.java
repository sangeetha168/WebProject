package com.gqt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

@WebServlet("/updaterecord")
public class updaterecord extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int sid = Integer.parseInt(request.getParameter("sid"));
            String name = request.getParameter("name");
            String contact = request.getParameter("contact"); // ✅ String to handle long phone numbers
            String gender = request.getParameter("gender");
            String city = request.getParameter("city");
            String course = request.getParameter("course");
            float amount = Float.parseFloat(request.getParameter("amount"));

            Configuration cfg = new Configuration().configure().addAnnotatedClass(Student.class);
            SessionFactory sf = cfg.buildSessionFactory();
            Session session = sf.openSession();
            Transaction tx = session.beginTransaction();

            Student s = session.get(Student.class, sid);
            if (s != null) {
                s.setName(name);
                s.setGender(gender);
                s.setCity(city);
                s.setCourse(course);
                s.setAmount(amount);
                session.update(s);
                tx.commit();
            }

            session.close();
            sf.close();

            response.sendRedirect("displayrecord"); // ✅ Better: redirect to servlet not JSP directly
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error occurred: " + e.getMessage());
        }
    }
}