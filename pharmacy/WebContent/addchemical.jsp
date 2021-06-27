<%@page import="com.pharma.User"%>
<%@page import="com.pharma.DBHelper"%>

<% 

String ch_id=request.getParameter("ch_id");

     String ch_name=request.getParameter("ch_name");
    float ch_quantity=Float.parseFloat(request.getParameter("ch_quantity"));
    float ch_threshold=Float.parseFloat(request.getParameter("ch_threshold"));
   

    	 try{
    	    	
    	    	DBHelper db=new DBHelper();
    	    	int count=db.updateChemical(ch_id,ch_quantity);
    	    	if(count>0)
    	    	{
    	    		out.print("Welcome");
    	    	}
    	    	else{
    	    		try{
            	    	
            	    	//DBHelper db=new DBHelper();
            	    	int count1=db.addChemical(ch_id,ch_name,ch_quantity,ch_threshold);
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