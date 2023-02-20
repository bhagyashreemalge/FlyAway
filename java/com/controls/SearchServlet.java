package com.controls;


import java.io.IOException;
import java.io.PrintWriter;
import java.time.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.Search;

public class SearchServlet extends HttpServlet {

    @Override
    public void service(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Search.date = req.getParameter("date");
        Search.source = req.getParameter("source");
        Search.destination = req.getParameter("destination");
        Search.persons = Integer.parseInt(req.getParameter("persons"));

        if (Search.date.equals("")) {
            PrintWriter out = resp.getWriter();
            out.println("Please enter a valid date");
        }
        else {
            Search.day = getDay(Search.date);
            req.getRequestDispatcher("searchresults.jsp").forward(req, resp);
            //resp.sendRedirect("/searchresults.jsp");
        }
    }

    public String getDay(String dateInp) {
        LocalDate dt = LocalDate.parse(dateInp);
        return dt.getDayOfWeek().toString();
    }
}

