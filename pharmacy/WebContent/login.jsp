<%@page import="com.pharma.User"%>
<%@page import="com.pharma.DBHelper"%>
<% 
String  id=request.getParameter("un");
String  pass=request.getParameter("pw");
String name="";
    try{
    	DBHelper db=new DBHelper();
    	User e=db.getEmpInfo(id,pass);
    	if(e!=null)
    	{
    		name=e.getUid();
    		out.print(name);    	   	
    		
    	}
    	else{
    		out.print(1); 
    	}
    		
    	
    }
    catch(Exception ex){
    	
    	out.print(1);
    
    	
    }
%>