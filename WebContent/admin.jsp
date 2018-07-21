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
    <script type="text/javascript">
        $(document).ready(function(){
            $(".flip").click(function(){
                $(".panel").slideToggle("slow");
            });
        });
    </script>
</head>
<body style="background-color: lightyellow">
<center>
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
                        <a class="navbar-brand" href="admin.jsp">影视交流平台·后台管理</a>
                    </div>  
                    <a href="dy" class="btn btn-info " style="float: right;margin-top: 5px;">返回用户界面</a>
                </nav>

            </div>

        </div>

    </div>
 <c:if test="${not empty adname}">
					<font style="width: 150px;height: 50px;line-height: 50px;color: black;font-size:25px;">欢迎光临:  ${adname}</font>
 </c:if>
    <br>
    <div class="panel">

        <div class="col-md-4">
            <div class="thumbnail">
                <h3>电影信息管理</h3>
                <p><a class="btn btn-primary" href="dyad.html">进入</a></p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <h3>电视剧信息管理</h3>
                <p><a class="btn btn-primary" href="dmad.html">进入</a></p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <h3>音乐信息管理</h3>
                <p><a class="btn btn-primary" href="musicad.html">进入</a></p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <h3>账户信息管理</h3>
                <p><a class="btn btn-primary" href="zhad.html">进入</a></p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <h3>评论信息管理</h3>
                <p><a class="btn btn-primary" href="plad.html">进入</a></p>
            </div>
        </div>


    </div>
    <br>

</center>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>