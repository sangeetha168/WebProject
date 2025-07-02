package com.gqt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

@WebServlet("/delete")
public class DeleteStudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static SessionFactory factory;

    @Override
    public void init() throws ServletException {
        factory = new Configuration().configure().buildSessionFactory();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int sid = Integer.parseInt(req.getParameter("sid"));
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();

        Student student = session.get(Student.class, sid);
        if (student != null) {
            session.delete(student);
        }

        tx.commit();
        session.close();

        // 🔁 Redirect to updated display list
        res.sendRedirect("displayrecord");
    }
}