<%
<%@ page
	import="ext.d504.baselineManage.integration.report.dao.BaselineReportDao"%>
<%@ page
	import="ext.d504.baselineManage.integration.bean.BaselineReport"%>
<%@ page
	import="ext.d504.baselineManage.integration.bean.BaselineReportView"%>
<%@ page import="com.bjsasc.platform.i18n.*"%>
out.println("test");
out.println("new test!");
out.println("this is change CS");

 for(BaselineReportView baselineReportView : listData){
	   count ++ ;
       String fieldName = baselineReportView.getFieldName();
       String fieldType = baselineReportView.getFieldType();
	   if (count < fieldCount){
            if ("DATE".equalsIgnoreCase(fieldType))
             sqlSelect +=  " to_char("+fieldName+",'yyyy-MM-dd HH24:mi:ss') "+fieldName+", ";
           else
		     sqlSelect += fieldName+",";
       }
	   else{
            if ("DATE".equalsIgnoreCase(fieldType))
            sqlSelect +=  " to_char("+fieldName+",'yyyy-MM-dd HH24:mi:ss') "+fieldName+" ";
           else
		    sqlSelect += fieldName; 
       }
 }
%>