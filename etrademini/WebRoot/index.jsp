<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.wy.domain.GoodsForm" %>
<jsp:useBean id="newGood" scope="page" class="com.wy.dao.GoodsDao"/>
<%List nowList =newGood.selectMark(Integer.valueOf("0"));%>
<%List freeList =newGood.selectMark(Integer.valueOf("1"));%>
<html>
<!-- 
ϵͳǰ̨��ҳ
������2014��5��28�� 
 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����̳�</title>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css"> 
<link href="css/listcss.css" rel="stylesheet" type="text/css"> 

<body>
<jsp:include page="fg-top.jsp" flush="true"/>
<table width="966" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="207" valign="top" bgcolor="#F5F5F5">
    <!--���01-->
    <jsp:include page="fg-left.jsp" flush="true"/></td>
    <td width="759" valign="top" bgcolor="#FFFFFF">
    <!--�Ҳ�01-->	
	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	


    <div align="center">
        <%if(session.getAttribute("form")!=null){   %>        <!--�ѵ�¼-->
           <br>
          <img src="image/fg_right02.jpg">                   <!--�ؼ�-->
          </div>
             <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">
                <tr> 
                   <td valign="top"><table width="100%" height="136" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" >
              <tr><td>
		      <%
              int free=3;
              if(freeList.size()<3){
	              free=freeList.size();
	              }

              for(int i=0;i<free;i++)
              {
                GoodsForm newGoods=(GoodsForm)freeList.get(i);
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
							                <td height="10" bgcolor="#FFFFFF"><div align="center" style="text-decoration:line-through;color:#910402">ԭ�ۣ�<%=newGoods.getNowPrice()%>Ԫ</div></td>
							              </tr>
							              <tr>
							                <td height="10" bgcolor="#FFFFFF"><div align="center"><font color="#F14D83">�ּۣ�<%=newGoods.getFreePrice()%>Ԫ</font></div></td>
							              </tr>
							              <tr>
							                <td height="10" bgcolor="#FFFFFF"><div align="center" class="linkBlack"><a href="goodsAction.do?action=16&id=<%=newGoods.getId()%>">�鿴��ϸ����</a></div></td>
							              </tr>
							            </table>

						   </div>
						  </div>
						 </div>
						</div>  
            <%}%>              <!--forѭ������-->
              </td>
            </tr>
         </table></td>
       </tr>
</table>
<div align="center">
    <%}%>                         <!--if����-->
   
    <img src="image/fg_right01.jpg">    <!--δ��¼   ��Ʒ-->
   </div>
     <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="215" valign="top">
            <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td>	
				<%
	              int now=6;
	              if(nowList.size()<6){
	              now=nowList.size();
	              }
	             if(session.getAttribute("form")!=null){
				 now=3;
	             }
	              for(int i=0;i<now;i++)
	              {
	                GoodsForm newGoods=(GoodsForm)nowList.get(i);
	                %>	              	        	

						<div class="frame" >
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
						                <td height="10" bgcolor="#FFFFFF"><div align="center" style="text-decoration:line-through;color:#910402">ԭ�ۣ�<%=newGoods.getNowPrice()%>Ԫ</div></td>
						              </tr>
						              <tr>
						                <td height="10" bgcolor="#FFFFFF"><div align="center"><font color="#F14D83">�ּۣ�<%=newGoods.getFreePrice()%>Ԫ</font></div></td>
						              </tr>
						              <tr>
						                <td height="10" bgcolor="#FFFFFF"><div align="center" class="linkBlack"><a href="goodsAction.do?action=16&id=<%=newGoods.getId()%>" >�鿴��ϸ����</a></div></td>
						              </tr>
						            </table>
						
						   </div>
						  </div>
						 </div>
						</div>
				<%} %>                      <!--for����-->	
                </td>
                  </tr>
                </table></td>
              </tr>
            </table>	
			</td>       
          </tr>
</table>
</td>
  </tr>
</table>
	<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
