<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.wy.domain.GoodsForm" %>
<%List newList =(List)request.getAttribute("list");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>电子商城</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css"> 
 <link href="css/listcss.css" rel="stylesheet" type="text/css"> 
<body>
<jsp:include page="fg-top.jsp" flush="true"/>
<table width="966" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="207" valign="top" bgcolor="#F5F5F5">
    <!--左侧01-->
    <jsp:include page="fg-left.jsp" flush="true"/></td>
    <td width="759" valign="top" bgcolor="#FFFFFF">
    <!--右侧01-->	
	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	
	
	<table width="546" height="42" border="0" align="center" cellpadding="0" cellspacing="0" background="image/fg_right01.jpg">
  <tr>
    <td>&nbsp;	</td>
    </tr>
</table>
<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
<TR>
<td>
  		        <%
              int now=6;
              if(newList.size()<6){
              now=newList.size();
              }
             
              for(int i=0;i<now;i++)
              {
                GoodsForm newGoods=(GoodsForm)newList.get(i);
                %>
		
			 <div class="frame">
 <div class="outer" onmousemove="this.className='moveStyle'" onmouseout="this.className='outer'">
  <div id="middle">
   <div id="inner">
   <table width="220" height="230" border="1" align="center" bordercolor="#D0E3E0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#999999">
              <tr>
                <td width="80" height="80"  bgcolor="#FFFFFF"><div align="center"><img src="<%=newGoods.getPriture()%>" width="220" height="165" alt="" /></div></td>
              </tr>
              <tr>
                    <td height="10" bgcolor="#FFFFFF"><div align="center"><%=newGoods.getName()%></div></td>
              </tr>
              <tr>
                <td height="10" bgcolor="#FFFFFF"><div align="center" style="text-decoration:line-through;color:#910402">原价：<%=newGoods.getNowPrice()%>元</div></td>
              </tr>
              <tr>
                <td height="10" bgcolor="#FFFFFF"><div align="center"><font color="#F14D83">现价：<%=newGoods.getFreePrice()%>元</font></div></td>
              </tr>
              <tr>
                <td height="10" bgcolor="#FFFFFF"><div align="center" class="linkBlack"><a href="goodsAction.do?action=16&id=<%=newGoods.getId()%>" >查看详细内容</a></div></td>
              </tr>
            </table>

   </div>
  </div>
 </div>
</div>
     
			<%}%>
			<td>
			</TR>
			<br>
            <table width="99%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><div align="right"><a href="#" onClick="javasrcipt:history.go(-1);">返回</a></div></td>
              </tr>
            </table>




	</td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
