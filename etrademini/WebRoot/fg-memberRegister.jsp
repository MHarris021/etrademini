<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>电子商城</title>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css"> 
<script language="javascript">
function checkEmpty(memberForm){
for(i=0;i<memberForm.length;i++){
if(memberForm.elements[i].value==""){
alert("表单信息不能为空");
return false;
}
}
if(document.memberForm.password.value!=document.memberForm.passwordOne.value){
window.alert("您两次输入的密码不一致，请重新输入");
return false;
}
if(document.memberForm.password.value=="" || document.memberForm.password.value.length<6){
alert("请输入长度6位以上的密码");
return false;
}
if(document.memberForm.name.value=="" || document.memberForm.name.value.length<5)
{
alert("请输入长度5位以上的用户名");
return false;
}
if(isNaN(document.memberForm.age.value)){
window.alert("年龄只能为数字");
return false;
}
}
</script>
<body>
<jsp:include page="fg-top.jsp" flush="true"/>
<table width="966" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
  <tr>
    <td bgcolor="#F5F5F5" align="center">
<img src="image/fg1.jpg" width="752" height="39">


<html:form action="memberAction.do?action=0"  onsubmit="checkEmpty(memberForm)">

<table width="700"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="300" height="35">
          <div align="right">会员名称：
          </div>
        </td>
        <td width="300">
            <div align="left">
             <html:text property="name"></html:text>
            </div>
        </td>
        <td width="1400" height="50">
          <div align="right"><font color="red">5-20个字符(包括小写字母、数字、下划线)，一旦注册成功会员名不能修改。</font>
          </div>
        </td>
        </tr>
      <tr>
        <td width="300" height="35">      
          <div align="right">会员密码：</div></td>
        <td width="300">
            <div align="left">
              <html:password property="password"></html:password>
          </div>
          </td>
          <td width="367" height="50">
          <div align="right"><font color="red">密码由6-16个字符组成，请使用英文字母加数字或符号的组合密码。</font>
          </div>
        </td>
          </tr>
          
         <tr>
        <td width="300" height="35">      
          <div align="right">密码确认：</div></td>
        <td width="300">
            <div align="left">
            <input type="password" name="passwordOne">
          </div>
          </td>
          <td width="188" height="50">
          <div align="right"><font color="red">请再输入一遍您上面输入的密码。</font>
          </div>
        </td>
          </tr>   
              
      <tr>
        <td width="300" height="35">      
          <div align="right">真实姓名：</div></td>
      <td width="300">
            <div align="left">
              <html:text property="reallyName"></html:text>
          </div></td>
           <td width="130" height="50">
          <div align="right"><font color="red">请输入您的真实姓名。</font>
          </div>
        </td>
          </tr>
          
          
      <tr>
        <td width="300" height="35">      
          <div align="right">年龄：</div></td>
       <td width="300">
            <div align="left">
              <html:text property="age"></html:text>             
          </div></td>
          <td width="107" height="50">
          <div align="right"><font color="red">请输入您的年龄。</font>
          </div>
        </td>
          </tr>
      <tr>
        <td width="300" height="35"> 
          <div align="right">职业：</div></td>
         <td width="300">
            <div align="left">
              <html:text property="profession"></html:text>
           </div></td>
          <td width="107" height="50">
          <div align="right"><font color="red">请输入您的职业。</font>
          </div>
        </td>
          </tr>
      <tr>
       <td width="300" height="35"> 
          <div align="right">Email地址：</div></td>
       <td width="300">
            <div align="left">
              <html:text property="email"></html:text>
        </div></td>
          <td width="414" height="50">
          <div align="right"><font color="red">没有电子邮件？推荐使用</font>
			<a href="" target="_blank">雅虎3.5G免费超大邮箱</a>、
			<a href="" target="_blank">搜狐邮箱</a><font color="red">和</font>
			<a href="" target="_blank">网易邮箱</a>。
          </div>
        </td>
          </tr>
      <tr>
        <td width="300" height="35">     
          <div align="right">找回密码问题：</div></td>
        <td width="300">
            <div align="left">
              <html:text property="question"></html:text>
         </div></td>
          <td width="107" height="50">
          <div align="right"><font color="red">请输入一个问题。</font>
          </div>
        </td>
          </tr>
      <tr>
        <td height="35">
          <div align="right">答案：</div></td>
         <td width="300">
            <div align="left">
              <html:text property="question"></html:text>
         </div></td>
          <td width="107" height="50">
          <div align="right"><font color="red">请输入一个答案。</font>
          </div>
        </td>
          </tr>
    </table>
    <br>
<input type="image" class="input1"  src="image/save.jpg" width="51" height="20">
&nbsp;&nbsp;
<a href="#" onClick="javascript:memberForm.reset()"><img src="image/clear.gif"></a>
&nbsp;&nbsp;
<a href="#" onClick="javasrcipt:history.go(-1)"><img src="image/back.gif"></a>
</html:form>



 
  <p>&nbsp;  </p>    </td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</bodsy>
</html:html>
