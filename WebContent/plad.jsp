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
<body style="background-color: lightgrey">

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
                    <a class="navbar-brand" href="admin.jsp">影视交流平台</a>
                </div>
            </nav>
        </div>
    </div>
</div>


<h1><div class="dy1">评论信息</div></h1>
<center>
    <hr class="hr1"/>
    <p>

    <p>
    <table border="1" width="80%"  class="table table-hover">
        <tr bgcolor="lightgreen">
            <td width="5%">序号</td><td width="30%">账户名</td><td width="30%">评分</td><td width="30%">评论</td><td width="8%">操作</td>
        </tr>
        <div>
                <div>
                 <c:forEach items="${list}" var="list"> 
                    <tr>
                        <td>${list.mplid}</td>
                        <td>${list.yonghu}</td>
                        <td>${list.pingfen}</td>
                        <td>${list.pinglun}</td>
                        <td>
                            <a href="delpl?mplid=${list.mplid }" class="btn btn-info " onClick='return confirm("确定要删除吗？")'>删除</a>
                        </td>
                    </tr>
                    </c:forEach>
                    
                </div>
        </div>
    </table>
</center>
<hr class="hr1"/>
<a href="admin.jsp" class="btn btn-info ">返回</a>

<br><br>
</body>
</html>