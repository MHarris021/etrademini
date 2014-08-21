<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
  <script Language="JavaScript">
 function quit() {
  if(confirm("确定要退出后台吗？")){
    window.location.href="loginOut.jsp";
	}
  }
 </script>
 <style>
<!--
 a{
    color: #000000;
 }
 .a4:link {    
	COLOR: #000000; TEXT-DECORATION: none; font-size:15px;
}
.a4:visited {   
	COLOR: #000000; TEXT-DECORATION: none; font-size:15px;
}
.a4:active {    
	COLOR: #000000; TEXT-DECORATION: none; font-size:15px;
}
.a4:hover {   
	COLOR: red; text-decoration:none; font-size:15px;
}
-->
</style>
 
 
 <%com.wy.domain.ManagerForm manager=(com.wy.domain.ManagerForm)session.getAttribute("manager"); %>
      
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
          <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="118" height="17" align="center" valign="bottom"><div align="left"><strong><a href="goodsAction.do?action=0" class="a4" style="color:#ff9933;">商品设置</a><strong></div></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="109" height="17" align="center" valign="bottom"><div align="left"><strong><a href="memberAction.do?action=2" class="a4" style="color:#ff9933;">会员设置</a><strong></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      
      <%if(manager.getSigh()==1){%>        
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
        <tr>
          <td><div align="left">
            <table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="127" height="17" align="center" valign="bottom"><div align="left"><strong><a href="managerAction.do?action=1" class="a4" style="color:#ff9933;">后台管理员设置</a></div></td>
                </tr>
             </table>
          </div></td>
        </tr>
      </table>
      <%}else{%>
       <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
        <tr>
          <td><div align="left">
            <table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="127" height="17" align="center" valign="bottom"><div align="left"><strong><a href="bg-managerUpdatePassword.jsp" class="a4" style="color:#ff9933;">修改密码</a><strong></div></td>
                </tr>
             </table>
          </div></td>
        </tr>
      </table>      
      <%}%>
           
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><strong><a href="orderAction.do?action=0" class="a4" style="color:#ff9933;">订单设置</a><strong></div></td>
              </tr>     
          </table></td>
        </tr>
      </table>
      
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><strong><a href="afficheAction.do?action=0" class="a4" style="color:#ff9933;">公告设置</a><strong></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><strong><a href="linkAction.do?action=0" style="color:#ff9933;" class="a4">友情设置</a><strong></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      
      <table width="170" height="47" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><strong><a href="javascript:quit()" class="a4" style="color:#ff9933;">安全退出</a><strong></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      
      <!--  
      <table width="37" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="image/bg_left04.jpg" width="170" height="68"></td>
        </tr>
      </table>
      -->