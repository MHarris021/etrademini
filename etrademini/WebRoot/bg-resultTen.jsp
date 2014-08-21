<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.util.*"%>
<%@page import="com.wy.domain.GoodsForm"%>
<jsp:useBean id="goods" scope="page" class="com.wy.dao.GoodsDao"/>
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
    <td width="207" valign="top" bgcolor="#F5F5F5" >
    <!--左侧01-->
    <jsp:include page="fg-left.jsp" flush="true"/></td>
    <td width="759" valign="top" bgcolor="#FFFFFF" >
    <!--右侧01-->	
	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	
	<%
        List list=goods.selectGoodsNumber();
		int number=list.size();
		if(number>10){
		number=10;
	}%>
	<font color="#910402">商品销售排行 TOP<%=number%>	</font>
	<br><br>
      <%  for(int i=0;i<number;i++){
          GoodsForm form=(GoodsForm)list.get(i);
        %>
		<div class="frame">
 <div class="outer" onmousemove="this.className='moveStyle'" onmouseout="this.className='outer'">
  <div id="middle">
   <div id="inner">
   <table width="220" height="230" border="1" align="center" bordercolor="#D0E3E0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#999999">
              <tr>
                <td width="80" height="80"  bgcolor="#FFFFFF"><div align="center"><img src="<%=form.getPriture()%>" width="220" height="165" alt="第<%=i+1%>名" /></div></td>
              </tr>
              <tr>
                    <td height="10" bgcolor="#FFFFFF"><div align="center"><%=form.getName()%></div></td>
              </tr>
              <tr>
                <td height="10" bgcolor="#FFFFFF"><div align="center" style="text-decoration:line-through;color:#910402">原价：<%=form.getNowPrice()%>元</div></td>
              </tr>
              <tr>
                <td height="10" bgcolor="#FFFFFF"><div align="center"><font color="#F14D83">现价：<%=form.getFreePrice()%>元</font></div></td>
              </tr>
              <tr>
                <td height="10" bgcolor="#FFFFFF"><div align="center" class="linkBlack"><a href="#" onClick="window.open('goodsAction.do?action=16&id=<%=form.getId()%>','','width=500,height=200');">查看详细内容</a></div></td>
              </tr>
            </table>

   </div>
  </div>
 </div>
</div>
		<%}%>
	
	
	
	
	
	
	
	
	
	
	</td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
