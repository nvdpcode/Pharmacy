<%@page import="com.pharma.DBHelper"%>

<% 

String ut_id=request.getParameter("ut_id");

     String ut_name=request.getParameter("ut_name");
    float ut_quantity=Float.parseFloat(request.getParameter("ut_quantity"));
    float ut_threshold=Float.parseFloat(request.getParameter("ut_threshold"));
   

    	 try{
    	    	
    	    	DBHelper db=new DBHelper();
    	    	int count=db.updateUtensil(ut_id,ut_quantity);
    	    	if(count>0)
    	    	{
    	    		out.print("Welcome");
    	    	}
    	    	else{
    	    		try{
            	    	
            	    	//DBHelper db=new DBHelper();
            	    	int count1=db.addUtensil(ut_id,ut_name,ut_quantity,ut_threshold);
            	    	if(count1>0)
            	    	{
            	    		out.print("Welcome");
            	    	}
            	    	else
            	    		out.print(1);
            	    	
            	    }
            	    catch(Exception f){
            	    	
            	    	out.print(1);
            	        
            	    	
            	    }
    	    	}
    	    	
    	    }
    	    catch(Exception e){
    	    	
    	    	
    	        
    	    	
    	    }
    
%>