
<%@page import="com.pharma.DBHelper"%>

<% 



     String ut_id=request.getParameter("ut_id");
    float ut_qty=Float.parseFloat(request.getParameter("ut_qty"));
    
   

    	 try{
    	    	
    	    	DBHelper db=new DBHelper();
    	    	String s = String.valueOf(session.getAttribute("user"));
    	    	int count=db.utensil_usage(ut_id,s,ut_qty);
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