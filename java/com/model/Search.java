package com.model;

public class Search {
    public static String date;
    public static String day;
    public static String source;
    public static String destination;
    public static int persons;

    public static String getQuery() {
        //return "SELECT * FROM flights WHERE source = '"+source+"' AND destination='"+destination+"' AND days like '%"+day+"%'";
        return "SELECT * FROM flights WHERE source = '"+source+"' AND destination='"+destination+"'";
    }
}
