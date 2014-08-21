<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.*"%>
<%@ page import="com.wy.domain.SellGoodsForm"%>
<jsp:useBean id="dao" scope="page" class="com.wy.dao.GoodsDao"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>电子商城</title>

</head>
 <link href="css/css.css" rel="stylesheet" type="text/css">
<body>

<jsp:include page="fg-top.jsp" flush="true"/>
<table width="964" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="207" bgcolor="#F5F5F5">
    <!--左侧01-->
    <jsp:include page="fg-left.jsp" flush="true"/></td>
    <td width="559" valign="top" bgcolor="#FFFFFF" align="center">
    <!--右侧01-->	
	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	
	<br><br>
	<strong><font color="red" size="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请选择银行</font></strong>	
	<br>
    <form name="form" method="post" action="witer.jsp">
    	<table border="0" cellpadding="0" >
    	<tr>
    	<td><input type="radio" name="bank" border="0" /></td>
    	<td><img src="Bank/ZH.jpg" /></td>
    	<td><input type="radio" value="Bank" name="bank" /></td>
    	<td><img src="Bank/GD.jpg" /></td>
    	<td><input type="radio" value="Bank" name="bank"/></td>
    	<td><img src="Bank/GF.jpg" /></td>
    	</tr>
    	<tr>
    	<td><input type="radio" value="Bank" name="bank"/></td>
    	<td><img src="Bank/GH.jpg" /></td>
    	<td><input type="radio" value="Bank" name="bank"/></td>
    	<td><img src="Bank/JT.jpg" /></td>
    	<td><input type="radio" value="Bank" name="bank"/></td>
    	<td><img src="Bank/MS.jpg" /></td>
    	</tr>
    	<tr>
    	<td><input type="radio" value="Bank" name="bank"/></td>
    	<td><img src="Bank/NH.jpg" /></td>
    	<td><input type="radio" value="Bank" name="bank"/></td>
    	<td><img src="Bank/XY.jpg" /></td>
    	<td><input type="radio" value="Bank" name="bank"/></td>
    	<td><img src="Bank/JS.jpg" /></td>
    	</tr>
    	</table>     
    	
           <input type="image" name="Submit2"  src="Bank/continue.jpg" 	/> 

    </form>

</table>

<jsp:include page="fg-down.jsp" flush="true"/>




















</body>
</html>
