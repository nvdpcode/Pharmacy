<%@page import="com.pharma.DBHelper"%>
<%@page import="java.sql.ResultSet"%>
<% 
	String as_lb_nm=request.getParameter("as_lb_nm");
	String as_ch_id=request.getParameter("as_ch_id");
    float as_ch_quantity=Float.parseFloat(request.getParameter("as_ch_quantity"));
    DBHelper db=new DBHelper();
    ResultSet lab_check=null;
    ResultSet chemical_check=null;
    
	try {
		lab_check=db.checkLab(as_lb_nm);
		chemical_check=db.checkChemical(as_ch_id);
		lab_check.next();
		String m = lab_check.getString(1);
		chemical_check.next();
		String n = chemical_check.getString(1);
		//while(lab_check.next()){
		//	m = lab_check.getString(1);
		//	System.out.println(m);
		//}
		
		if(m.equals("1") && n.equals("1")){
			try{
    	    	
    	    	
    	    	int count=db.updateAssignChemical(as_lb_nm,as_ch_id,as_ch_quantity);
    	    	if(count>0)
    	    	{
    	    		out.print("Welcome");
    	    	}
    	    	else{ 
    	    		try{
            	    	
            	    	//DBHelper db=new DBHelper();
            	    	int count1=db.assignChemical(as_lb_nm,as_ch_id,as_ch_quantity);
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