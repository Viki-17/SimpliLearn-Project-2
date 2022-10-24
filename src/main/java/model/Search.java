package model;

import javax.servlet.annotation.WebServlet;


public abstract class Search {

	//public static String day;
	
	public static String date;
	public static String source;
	public static String destination;
	public static int persons;
	
	public static String getQuery() {
		return
	"SELECT * FROM flyaway WHERE flight_source = '"+source+"' AND destination = '"+destination+"'";
	}
}
