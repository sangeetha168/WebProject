package com.gqt;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

@WebServlet("/displayrecord")
public class displayrecord extends HttpServlet {
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            Query<Student> query = session.createQuery("from Student", Student.class);
            List<Student> studentList = query.getResultList();

            HttpSession httpSession = request.getSession(true);
            httpSession.setAttribute("student", studentList);
            

            response.sendRedirect("/mini-pro/disp.jsp");

        } catch (Exception e) {
            throw new ServletException("Error retrieving student records", e);
        } finally {
            if (session != null) session.close();
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
