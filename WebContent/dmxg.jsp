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
    <form method="post" action="dmupdate"> 
        <table  style=" margin: 0 auto;">
        		<c:forEach items="${list}" var="list">
			<input type="hidden" name="did" value="${list.did }" />
            <tr>
                <td style="width: 150px;">电影名称</td>
                <td><input type="text" name="dname" style="width:300px;" value="${list.dname }" /></td>
            </tr>

            <tr><td>&nbsp;</td></tr>

            <tr>
                <td>演员</td>
                <td><input type="text" name="dactor" style="width:300px;" value="${list.dactor }" /></td>
            </tr>

            <tr><td>&nbsp;</td></tr>

            <tr>
                <td>导演</td>
                <td><input type="text" name="ddaoyan" style="width:300px;" value="${list.ddaoyan }" /></td>
            </tr>

            <tr><td>&nbsp;</td></tr>

            <tr>
                <td>地区</td>
                <td><input type="text" name="ddiqu" style="width:300px;" value="${list.ddiqu }" /></td>
            </tr>

            <tr><td>&nbsp;</td></tr>

            <tr>
                <td>简介</td>
                <td><textarea type="text" name="djie" style="width:300px;height: 100px;" >${list.djie }</textarea></td>
            </tr>

            <tr><td>&nbsp;</td></tr>

            <tr>
                <td>分数</td>
                <td><input type="text" name="dfenshu" style="width:300px;" value="${list.dfenshu }" /></td>
            </tr>

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
<a href="dmad.html" class="btn btn-info">返回</a>
<br><br>
</body>
</html>