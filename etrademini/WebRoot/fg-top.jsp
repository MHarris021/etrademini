<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.wy.domain.MemberForm"%>
<html>
<!-- 
首页顶部导航部分
杨亚明 2014年5月27日
 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
<style type="text/css">
      a{
          text-decoration:none;
          color: red;
         }
         td {
	      font-size: 9pt;	color: #red;
         }
         .a4:link {   
     	COLOR: #FFFFFF; TEXT-DECORATION: none; font-size:12px;
}
        .a4:visited {   
	     COLOR: #FFFFFF; TEXT-DECORATION: none; font-size:12px;
}
        .a4:active {    
	    COLOR: #FFFFFF; TEXT-DECORATION: none; font-size:12px;
}
       .a4:hover {   
	   COLOR: #FF3300; text-decoration:underline font-size:12px;
}
</style>
</head>
<%
  String memberlink="connection.jsp";
  String orderlink="connection.jsp";
  String shoppinglink="connection.jsp";
  MemberForm form=null;
  if(session.getAttribute("form")!=null){
  form=(MemberForm)session.getAttribute("form");
  memberlink="memberAction.do?action=5&id="+form.getId();
  orderlink="cart_detail.jsp";
  shoppinglink="cart_see.jsp";
  }
%>
<body>
<table width="966" height="82" border="0" align="center" cellpadding="0" cellspacing="0" background="image/bg_01.jpg">
  <tr>
    <td width="627">&nbsp;</td>
    <td width="139" valign="top"><table width="125" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="70" height="23" valign="bottom"><font color="#FFFFFF"><a href="#" class="a4">简体中文</a></font></td>
        <td width="55" valign="bottom"><font color="#FFFFFF"><a href="#" class="a4">繁体中文</a></font></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="966" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC" background="image/fg_top03.jpg">
      <tr align="center">
        <td width="117" height="31" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="index.jsp" class="a4">首页</a></td>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="bg-resultTen.jsp" class="a4">销售排行</a></td>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="goodsAction.do?action=14&mark=0" class="a4">新品上架</a></td>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="goodsAction.do?action=15&mark=1" class="a4">特价商品</a></td>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="<%=orderlink%>" class="a4">查看订单</a></td>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="<%=shoppinglink%>" class="a4">购物车</a></td>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="<%=memberlink%>" class="a4">会员修改</a></td>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="http://localhost:8080/test/index.jsp" onclick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://localhost:8080/test/index.jsp')" class="a4">设为首页</a></td>
      </tr>	
</table>
<br>































</body>
</html>
