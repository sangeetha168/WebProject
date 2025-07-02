<%@ page import="com.gqt.Student, org.hibernate.*, org.hibernate.cfg.Configuration" %>
<%
    int sid = Integer.parseInt(request.getParameter("sid"));

    Configuration cfg = new Configuration().configure().addAnnotatedClass(Student.class);
    SessionFactory sf = cfg.buildSessionFactory();
    Session session1 = sf.openSession();
    Transaction tx = session1.beginTransaction();

    Student student = session1.get(Student.class, sid);
    if (student != null) {
        session1.delete(student);
    }

    tx.commit();
    session1.close();

    response.sendRedirect("disp.jsp");
%>