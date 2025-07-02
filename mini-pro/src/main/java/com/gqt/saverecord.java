package com.gqt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

@WebServlet("/saverecord")
public class saverecord extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static SessionFactory sessionFactory;

    @Override
    public void init() throws ServletException {
        try {
            if (sessionFactory == null) {
                sessionFactory = new Configuration().configure().buildSessionFactory();
            }
        } catch (Throwable ex) {
            throw new ServletException("Hibernate SessionFactory init failed: " + ex, ex);
        }
    }

    @Override
    public void destroy() {
        if (sessionFactory != null && !sessionFactory.isClosed()) {
            sessionFactory.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Session session = null;
        Transaction tx = null;

        try {
            request.setCharacterEncoding("UTF-8");

            // ✅ MATCH the form field names
            int sid = Integer.parseInt(request.getParameter("sid"));
            String name = request.getParameter("fn");   // matches <input name="fn">
            String gender = request.getParameter("gender");
            String city = request.getParameter("city");
            String course = request.getParameter("course");
            float amount = Float.parseFloat(request.getParameter("amount"));

            // Create Student object
            Student student = new Student();
            student.setSid(sid);
            student.setName(name);
            student.setGender(gender);
            student.setCity(city);
            student.setCourse(course);
            student.setAmount(amount);

            // Hibernate save
            session = sessionFactory.openSession();
            tx = session.beginTransaction();
            session.save(student);
            tx.commit();

            response.sendRedirect("/mini-pro/Save.jsp");

        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid number input: " + e.getMessage());
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            throw new ServletException("Error saving student", e);
        } finally {
            if (session != null) session.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "GET not supported. Use POST.");
    }
}