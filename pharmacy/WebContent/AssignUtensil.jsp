<%@page import="com.pharma.DBHelper"%>
<%@page import="java.sql.ResultSet"%>
<% 
	String as_lb_nm=request.getParameter("as_lb_nm1");
	String as_ut_id=request.getParameter("as_ut_id");
    float as_ut_quantity=Float.parseFloat(request.getParameter("as_ut_quantity"));
    DBHelper db=new DBHelper();
    ResultSet lab_check=null;
    ResultSet utensil_check=null;
    
	try {
		lab_check=db.checkLab(as_lb_nm);
		utensil_check=db.checkUtensil(as_ut_id);
		lab_check.next();
		String m = lab_check.getString(1);
		utensil_check.next();
		String n = utensil_check.getString(1);
		//while(lab_check.next()){
		//	m = lab_check.getString(1);
		//	System.out.println(m);
		//}
		
		if(m.equals("1") && n.equals("1")){
			try{
    	    	
    	    	
    	    	int count=db.updateAssignUtensil(as_lb_nm,as_ut_id,as_ut_quantity);
    	    	if(count>0)
    	    	{
    	    		out.print("Welcome");
    	    	}
    	    	else{ 
    	    		try{
            	    	
            	    	//DBHelper db=new DBHelper();
            	    	int count1=db.assignUtensil(as_lb_nm,as_ut_id,as_ut_quantity);
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
    	    	out.print(1);
    	    }
		}
		else {
			out.print(1);
		}
    
   	 
	}
	catch(Exception e) {
		out.print(1);
	}
%>