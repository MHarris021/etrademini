<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.util.*"%>
<%@page import="com.wy.domain.GoodsForm"%>
<jsp:useBean id="goods" scope="page" class="com.wy.dao.GoodsDao"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����̳�</title>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css"> 
<link href="css/listcss.css" rel="stylesheet" type="text/css"> 
<%List freeList =(List)request.getAttribute("list");%>
<%
int number=Integer.parseInt((String)request.getAttribute("number"));
int maxPage=Integer.parseInt((String)request.getAttribute("maxPage"));
int pageNumber=Integer.parseInt((String)request.getAttribute("pageNumber"));
int start=number*6;//��ʼ����
int over=(number+1)*6;//��������
int count=pageNumber-over;//��ʣ��������¼
if(count<=0){
  over=pageNumber;
  }
%> 
<body>
<jsp:include page="fg-top.jsp" flush="true"/>
<table width="966" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="207" valign="top" bgcolor="#F5F5F5">
    <!--���01-->
    <jsp:include page="fg-left.jsp" flush="true"/></td>
    <td width="759" valign="top" bgcolor="#FFFFFF" >
    	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	
    <table width="546" height="42" border="0" align="center" cellpadding="0" cellspacing="0" background="image/fg_right02.jpg">
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
	

	      <%
          
             
              for(int i=start;i<over;i++)
              {
                GoodsForm freeGoods=(GoodsForm)freeList.get(i);
                %>
		
			 
			 <div class="frame">
 <div class="outer" onmousemove="this.className='moveStyle'" onmouseout="this.className='outer'">
  <div id="middle">
   <div id="inner">
   <table width="220" height="230" border="1" align="center" bordercolor="#D0E3E0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#999999">
              <tr>
                <td width="80" height="80"  bgcolor="#FFFFFF"><div align="center"><img src="<%=freeGoods.getPriture()%>" width="220" height="165" alt="" /></div></td>
              </tr>
              <tr>
                    <td height="10" bgcolor="#FFFFFF"><div align="center"><%=freeGoods.getName()%></div></td>
              </tr>
              <tr>
                <td height="10" bgcolor="#FFFFFF"><div align="center" style="text-decoration:line-through;color:#910402">ԭ�ۣ�<%=freeGoods.getNowPrice()%>Ԫ</div></td>
              </tr>
              <tr>
                <td height="10" bgcolor="#FFFFFF"><div align="center"><font color="#F14D83">�ּۣ�<%=freeGoods.getFreePrice()%>Ԫ</font></div></td>
              </tr>
              <tr>
                <td height="10" bgcolor="#FFFFFF"><div align="center" class="linkBlack"><a href="goodsAction.do?action=16&id=<%=freeGoods.getId()%>" >�鿴��ϸ����</a></div></td>
              </tr>
            </table>

   </div>
  </div>
 </div>
</div>
			<%}%><br>
        
		    <div align="center">
		      <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr align="center">
                  <td width="13%">��Ϊ<%=maxPage%>ҳ</td>
                  <td width="18%">����<%=pageNumber%>����¼</td>
                  <td width="26%">��ǰΪ��<%=number+1%>ҳ</td>
                  <td width="15%"><%if((number+1)==1){%>
      ��һҳ
        <%}else{%>
        <a href="goodsAction.do?action=15&mark=1&i=<%=number-1%>">��һҳ</a></td>
                  <%}%>
                  <td width="14%"><%if(maxPage<=(number+1)){%>
      ��һҳ
        <%}else{%>
        <a href="goodsAction.do?action=15&mark=1&i=<%=number+1%>">��һҳ</a></td>
                  <%}%><td width="14%"><div align="center"><a href="#" onClick="javasrcipt:history.go(-1);">����</a></div></td>
                </tr>
				
              </table>	</td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
