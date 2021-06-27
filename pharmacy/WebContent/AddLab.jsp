<%@page import="com.pharma.DBHelper"%>

<% 
     String lab_name=request.getParameter("lb_nm");
	 String pass = request.getParameter("pass");
    	 try{
    	    	
    	    	DBHelper db=new DBHelper();
    	    	int count=db.insertLab(lab_name);
    	    	db.new_lab(lab_name,pass);
    	    	if(count>0)
    	    	{
    	    		out.print("Welcome");
    	    	}
    	    	else{
    	    		out.print(1);
    	    	}
    	    	
    	    }
    	    catch(Exception e){
    	   		out.print(1);
    	    }
    
%>