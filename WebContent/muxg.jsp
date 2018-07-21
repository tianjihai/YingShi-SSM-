<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台管理</title>
    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery1.11.3/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body  style="background-color: lightgrey">

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span><span
                            class="icon-bar"></span><span class="icon-bar"></span><span
                            class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="admin.jsp">影视交流平台后台管理</a>
                </div>
            </nav>
        </div>

    </div>
</div>

<h1><div class="dy1"> 修改信息</div></h1>

    <hr class="hr1"/>

    <p>
    <form method="post" action="muupdate"> 
        <table  style=" margin: 0 auto;">
        		<c:forEach items="${list}" var="list">
<input type="hidden" name="yid" value="${list.yid }" />
            <tr>
                <td style="width: 150px;">专辑名称</td>
                <td><input type="text" name="yalbum" style="width:300px;" value="${list.yalbum }" /></td>
            </tr>

            <tr><td>&nbsp;</td></tr>

            <tr>
                <td>歌手</td>
                <td><input type="text" name="ysinger" style="width:300px;" value="${list.ysinger }" /></td>
            </tr>

            <tr><td>&nbsp;</td></tr>

            <tr>
                <td>收入歌曲</td>
                <td><input type="text" name="ysong" style="width:300px;" value="${list.ysong }" /></td>
            </tr>

            <tr><td>&nbsp;</td></tr>

            <tr>
                <td>语言</td>
                <td><input type="text" name="ylanguage" style="width:300px;" value="${list.ylanguage }" /></td>
            </tr>
            
            <tr><td>&nbsp;</td></tr>
            
            <tr>
                <td>分数</td>
                <td><input type="text" name="yfenshu" style="width:300px;" value="${list.yfenshu }" /></td>
            </tr>
            
            <tr><td>&nbsp;</td></tr>

            <tr>
                <td>简介</td>
                <td><textarea type="text" name="yjie" style="width:300px;height: 100px;" >${list.yjie }</textarea></td>
            </tr>

            <tr><td>&nbsp;</td></tr>


            <tr><td>&nbsp;</td></tr>

            <tr><td>&nbsp;</td></tr>

            <tr>
                <td align="center" colspan="2">
                     <input class="btn btn-info " type="submit" value="完  成"  />
                </td>
            </tr>
            </c:forEach>
        </table>
    </form>

<hr class="hr1"/>
<a href="dyad.html" class="btn btn-info">返回</a>
<br><br>
</body>
</html>