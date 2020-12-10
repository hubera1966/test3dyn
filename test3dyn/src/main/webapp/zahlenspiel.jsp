<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<%! 
  /** Erzeugt eine Zufallszahl zwischen 0..100 */ 
  private Integer guessNewNumber() {
    int result = Double.valueOf(Math.random() * 100).intValue();
	return Integer.valueOf(result); 
  }
  
  /** Erhoeht den Zahler */ 
  private Integer inc(Integer counter) {
    int result = counter.intValue() + 1;
	return Integer.valueOf(result); 
  }
%>
  
<%
  Integer guess = null;

  // Auslesen von Session-Attributen, ggf. 'null' wenn diese nicht existieren
  Integer number = (Integer)session.getAttribute("number");
  Integer counter = (Integer)session.getAttribute("counter"); 

  // Auslesen eines Request-Parameters 
  String param = request.getParameter("guess");
  if (param != null) {
	  guess = Integer.valueOf(param); 
	  }
%>



  <head>
    <meta charset="ISO-8859-1">
    <title>Zahlenspiel</title>
  </head>
  <body>
    <%-- Codieren eines URLs (siehe 3.4.4) --%>
    
	<form action='<%=response.encodeURL("zahlenspiel.jsp")%>'> 
    <H1>Zahlenspiel</H1>
    <br>
    <%-- guess <%= guess %> --%> 
    <% System.out.println( "guess = " + guess ); %>
    <% System.out.println( "counter = " + counter ); %>
    <% System.out.println( "number = " + number ); %>
    <br>
    
	Ich denke mir eine Zahl zwischen 0 and 100. Welche? 
    <br>
	<br>
	<br>

	<% 
		// Neues Spiel oder lauft es bereits ?! 
		if ((number == null) || (guess == null)) {
			number = guessNewNumber();
			counter = Integer.valueOf(0);
			
		// Setzen von Session-Attributen 
		session.setAttribute("number", number);
		session.setAttribute("counter", counter);
		} else {
			counter = inc(counter);
			session.setAttribute("counter", counter);
			int result = number.compareTo(guess); 
    		switch (result) {
			case -1 : %> Die gesuchte Zahl ist kleiner. <%
				break;
			case 0 : %> Richtig. Versuche <%= counter %>     <% 
					System.out.println( "Geschafft, Versuche = " + counter );
				// Loeschen eines Session-Attributs
				session.removeAttribute("number");
				break;
			case 1 : %> Die gesuchte Zahl ist groBer. <% 
				break; 
			} 
		} 
	%> 
	Eingabe: <input type="text" name="guess" />
			 <input type="submit" value="Versuchen" /> 
    </form>
    <hr>
    <a href=/test3dyn/zahlenspiel.jsp>Zahlenspiel</a>
    <a href="/test3dyn/">Startseite</a>
  </body>
</html>