
<%@page import="com.pharma.DBHelper"%>

<% 



     String ch_id=request.getParameter("ch_id");
    float ch_qty=Float.parseFloat(request.getParameter("ch_qty"));
    
   

    	 try{
    	    	
    	    	DBHelper db=new DBHelper();
    	    	String s = String.valueOf(session.getAttribute("user"));
    	    	int count=db.chemical_usage(ch_id,s,ch_qty);
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