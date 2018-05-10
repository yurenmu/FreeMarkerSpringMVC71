<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻焦点</title>
</head>
<body>
    <div id="container">
 	<#list ["星期一","星期二","星期三"] + ["星期四","星期五","星期六","星期天"] as week>
	${week}
	</#list>
	<br>
		----------------------------------------------------------------------
		<br>
	<#--下面是文本将直接输出-->
	Hello FreeMarker
	<#-- 注释部分 -->
	<#-- 下面使用插值 -->
	<h1>Welcome ${user} !</h1>
	<br>
	---------------------------------------------------------------------------
	<br>
	<#setting number_format="currency"/> <#-- 设置数字格式为货币 -->

	<#assign answer=42/>  <#-- 赋值 -->
	
	${answer} <#-- 输出 -->
	
	${answer?string} <#-- 输出格式为字符类型，与上面相同-->
	
	${answer?string.number} <#-- 输出格式为数字类型-->
	
	${answer?string.currency} <#-- 输出格式为货币类型-->
	
	${answer?string.percent} <#-- 输出格式为百分比类型-->
	<br>
	---------------------------------------------------------------
	<br>
	<u1>
	<#-- 使用FTL指令 -->
	<p>We have these animals:
	<table border=1>
	  <tr><th>Name<th>Size<th>Price
	  <#list animals as being>
	  <tr><td>${being.name}<td>${being.size}  <td>${being.price} </tr>
	  </#list>
	</table>  
	------------------------------------------------------------------------
    <h2>新闻焦点</h2>
    <#setting number_format="#">
    <ul>
        <#list articles as article>
        <li>
            <a href="news/${article.id}.html">${article.title}</a>
        </li>
        </#list>
    </ul>
    </div>
    <style>
       #container{
          font-family:"microsoft yahei";
          width:800px;
          margin:0 auto;
       }
       a{
         color:#333;
         text-decoration:none;
       }
       li{
         height:26px;
         line-height:26px;
       }
    </style>
</body>
</html>