<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����̳�</title>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css"> 
<script language="javascript">
function checkEmpty(memberForm){
for(i=0;i<memberForm.length;i++){
if(memberForm.elements[i].value==""){
alert("����Ϣ����Ϊ��");
return false;
}
}
if(document.memberForm.password.value!=document.memberForm.passwordOne.value){
window.alert("��������������벻һ�£�����������");
return false;
}
if(document.memberForm.password.value=="" || document.memberForm.password.value.length<6){
alert("�����볤��6λ���ϵ�����");
return false;
}
if(document.memberForm.name.value=="" || document.memberForm.name.value.length<5)
{
alert("�����볤��5λ���ϵ��û���");
return false;
}
if(isNaN(document.memberForm.age.value)){
window.alert("����ֻ��Ϊ����");
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
          <div align="right">��Ա���ƣ�
          </div>
        </td>
        <td width="300">
            <div align="left">
             <html:text property="name"></html:text>
            </div>
        </td>
        <td width="1400" height="50">
          <div align="right"><font color="red">5-20���ַ�(����Сд��ĸ�����֡��»���)��һ��ע��ɹ���Ա�������޸ġ�</font>
          </div>
        </td>
        </tr>
      <tr>
        <td width="300" height="35">      
          <div align="right">��Ա���룺</div></td>
        <td width="300">
            <div align="left">
              <html:password property="password"></html:password>
          </div>
          </td>
          <td width="367" height="50">
          <div align="right"><font color="red">������6-16���ַ���ɣ���ʹ��Ӣ����ĸ�����ֻ���ŵ�������롣</font>
          </div>
        </td>
          </tr>
          
         <tr>
        <td width="300" height="35">      
          <div align="right">����ȷ�ϣ�</div></td>
        <td width="300">
            <div align="left">
            <input type="password" name="passwordOne">
          </div>
          </td>
          <td width="188" height="50">
          <div align="right"><font color="red">��������һ����������������롣</font>
          </div>
        </td>
          </tr>   
              
      <tr>
        <td width="300" height="35">      
          <div align="right">��ʵ������</div></td>
      <td width="300">
            <div align="left">
              <html:text property="reallyName"></html:text>
          </div></td>
           <td width="130" height="50">
          <div align="right"><font color="red">������������ʵ������</font>
          </div>
        </td>
          </tr>
          
          
      <tr>
        <td width="300" height="35">      
          <div align="right">���䣺</div></td>
       <td width="300">
            <div align="left">
              <html:text property="age"></html:text>             
          </div></td>
          <td width="107" height="50">
          <div align="right"><font color="red">�������������䡣</font>
          </div>
        </td>
          </tr>
      <tr>
        <td width="300" height="35"> 
          <div align="right">ְҵ��</div></td>
         <td width="300">
            <div align="left">
              <html:text property="profession"></html:text>
           </div></td>
          <td width="107" height="50">
          <div align="right"><font color="red">����������ְҵ��</font>
          </div>
        </td>
          </tr>
      <tr>
       <td width="300" height="35"> 
          <div align="right">Email��ַ��</div></td>
       <td width="300">
            <div align="left">
              <html:text property="email"></html:text>
        </div></td>
          <td width="414" height="50">
          <div align="right"><font color="red">û�е����ʼ����Ƽ�ʹ��</font>
			<a href="" target="_blank">�Ż�3.5G��ѳ�������</a>��
			<a href="" target="_blank">�Ѻ�����</a><font color="red">��</font>
			<a href="" target="_blank">��������</a>��
          </div>
        </td>
          </tr>
      <tr>
        <td width="300" height="35">     
          <div align="right">�һ��������⣺</div></td>
        <td width="300">
            <div align="left">
              <html:text property="question"></html:text>
         </div></td>
          <td width="107" height="50">
          <div align="right"><font color="red">������һ�����⡣</font>
          </div>
        </td>
          </tr>
      <tr>
        <td height="35">
          <div align="right">�𰸣�</div></td>
         <td width="300">
            <div align="left">
              <html:text property="question"></html:text>
         </div></td>
          <td width="107" height="50">
          <div align="right"><font color="red">������һ���𰸡�</font>
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
