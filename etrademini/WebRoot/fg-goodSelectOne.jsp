<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.wy.domain.GoodsForm"%>
<%
GoodsForm form=(GoodsForm)request.getAttribute("form");
%>
<html>
  <head>
    
    <title>商品详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<style type = "text/css">

	.addPage{
		margin-left:85px;
		font-size:12px;
		color:#333333;
		margin-top:30px;
		line-height:30px;
		width:50px;
		text-decoration:none;
		display:inline;
	}
	.addPage:hover{
		color:#E33A3D;
		text-decoration:underline;
	}
	.topline ul{
		display:inline;
		height:30px;
		float:right;
		margin-top:7px;
		font-size:12px;
		margin-right:90px;
	}
	.topline ul li{
		float:left;
		list-style:none;
		margin-left:5px;
		margin-right:5px;
	}
	.topline ul li a{
		text-decoration:none;
		color:#333333;
	}
	.topline ul li a:hover{
		color:#E33A3D;
		text-decoration:underline;
	}
	.neck{
		height:30px;
		width:990px;
		margin:auto;
	}
	img{ vertical-align: middle;}
	.neckin a{ text-decoration:none}
	.neckin a:hover{ text-decoration:underline}
	.fbody{
		width:990px; height:auto; margin:auto; margin-bottom: 150px; padding-top: 0px; text-align:center; border: 1px solid #DDD; 
	}
	 td{ padding-left: 10px; padding-bottom: 10px; padding-top: 10px}
	.foot{ font-size:12px; width:990px; margin:auto}
	.foot ul{ margin-left:80px;}
	.foot ul li{ list-style:none; float:left; margin:3px 5px;}
	.foot ul li a{ text-decoration:none; color:#333333 }
	.foot ul li a:hover{ text-decoration:underline; color:blue;}
	.foot{ text-align:center}
	.foot p{ padding-top:6px;}
	.fbody div{ float:left}
	.fbody{ background-color:#FFF} 
	.bodyleft div ul li{ float:left; list-style:none; font-size:14px}
	.okla{ text-decoration:none;  padding-left:50px;}
	.okla :hover{ text-decoration:underline}
	.yi{
		border:#CCCCCC 1px solid; display:none;
		}
	.er{border:#CCCCCC 1px solid; display:none}
	.san{border:#CCCCCC 1px solid; display:none}
	.redborder{ border:#F00 1px solid}
	.blueborder{ border:#00F 1px solid}
	.blackback{ background-color:black;}
	</style>
	<link href="css/showcss.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
  </head>
  
  <body> 
  </div>
    	<div class="head">
    	
	</div>
    <div style="width:990px; height:80px; margin:auto;">
    	<div style= "width:400px; height:80px; float:left;">
    		<img src = "image/logo-201305.jpg" style="margin-top:20px; margin-left:30px; cursor: pointer;" onclick="location.href='index.jsp'"/>
    	</div>
    </div>
    <div style="width:990px; height:80px; margin:auto; ">
    	<div >
    		
    	</div>
    </div>      	
    </div><!--
    <table  width="700" height="300" align="center" border="0" style="background: gray"  cellspacing="0" cellpadding="0" >
      <tr>
       <td width="36%" rowspan="4" height="120"><div align="center">      
         <img src="<%=form.getPriture()%>" width="220" height="165"  border="2" style="border-color: red"/>
       </td>
       <td bordercolor="#FF9999" align="left" style="padding-top: 10">货品名称：<%=form.getName()%> <input type="hidden" name="goodsId" value="<%=form.getId()%>" /></td>
       <td style="padding-top: 10"><%if(form.getMark().toString().equals("1")){%>
<font color="red" ><B>特价：<%=form.getFreePrice()%>元</B></font><input  type="hidden" name="price" value="<%=form.getFreePrice()%>"/>
<%}else{%>
现&nbsp;&nbsp;&nbsp;&nbsp;价：<%=form.getNowPrice()%>元<input type="hidden" name="price" value="<%=form.getNowPrice()%>"/>
<%}%></td>
       <td>简&nbsp;&nbsp;&nbsp;&nbsp;介：<%=form.getIntroduce()%> </td>
      </tr>
      <tr>      
        

      </tr>
    </table>
  -->
   <form name="form" method="post" action="cart_add.jsp">

<table width="800"  border="1" bordercolor="#dd6c75" align="center" cellpadding="0" cellspacing="0" bgcolor="#cccccc"  >
  <tr>
    <td width="36%" rowspan="4" height="120"><div align="center">
        
        <img src="<%=form.getPriture()%>" width="220" height="165" />
    </div></td>
    <td width="64%" height="30"><div align="center">
      <table width="71%" height="20"  border="0"  align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td bordercolor="#FF9999">货品名称：<%=form.getName()%> <input type="hidden" name="goodsId" value="<%=form.getId()%>" /></td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr>
    <td height="30"><div align="center">
        <table width="71%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><%if(form.getMark().toString().equals("1")){%>
<font color="red" ><B>特价：<%=form.getFreePrice()%>元</B></font><input  type="hidden" name="price" value="<%=form.getFreePrice()%>"/>
<%}else{%>
<font color="ff0099"><B>现&nbsp;&nbsp;&nbsp;&nbsp;价：<%=form.getNowPrice()%>元</B></font><input type="hidden" name="price" value="<%=form.getNowPrice()%>"/>
<%}%></td>
      </tr>
    </table>
</div></td>

</td>
  </tr>
  <tr>
    <td height="30"><div align="center">
        <table width="71%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td>
        简&nbsp;&nbsp;&nbsp;&nbsp;介：<%=form.getIntroduce()%> 
        </td>
      </tr>
    </table>
</div></td>
  
  <tr>
    <td height="30"><div align="center">
      <table width="71%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr align="center" >
              <td ><a href="index.jsp"><img border="0" src="image/2.jpg"/></a></td>
	          <td >&nbsp;&nbsp;<input type="image" src="image/2.jpg.jpg" name="Submit" value="放入购物车"></td>
         </tr>
      </table>
    </div></td>
  
</table>
</form>
  </body>
  
</html>
