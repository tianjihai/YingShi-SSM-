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
                    <a class="navbar-brand" href="admin.jsp">影视交流平台后台管理</a>
                </div>
            </nav>
        </div>
    </div>
</div>


<h1><div class="dy1">电影信息</div></h1>
<center>
    <hr class="hr1"/>
    <p>
 
<a class="btn btn-info " data-toggle="modal" data-target="#exampleModal" >添加信息</a>
    <p>
    <table border="1" width="80%" >
        <tr bgcolor="lightgreen">
            <td width="5%">序号</td><td  width="10%">电影名称</td><td>演员</td><td width="7%">导演</td> <td>简介</td><td width="4%">分数</td><td>图片</td><td width="8%">操作</td>
        </tr>
        <div>
                <div>
                <c:forEach items="${list}" var="list"> 
                    <tr>
                        <td>${list.id}</td>
                        <td>${list.mname}</td>
                        <td>${list.mactor}</td>
                        <td>${list.mdaoyan}</td>
                        <td>${list.mjie}</td>
                        <td>${list.mfenshu}</td>
                        <td><img src="${list.mpic}"  /></td>
                        <td>
                            <a href="dyxg?id=${list.id }" class="btn btn-info ">修改</a>&nbsp; 
                            <a class="btn btn-info" href="del?id=${list.id }" onClick='return confirm("确定要删除吗？")'>删除</a>
                        </td>
                    </tr>
                    </c:forEach>
                </div>
        </div>
    </table>
</center>
<hr class="hr1"/>
<a href="admin.jsp" class="btn btn-info "> 返回</a>
<br><br>
</body>

	<!-- 模态框（Modal） -->
   <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <form action="addm" method="post">
          <div class="form-group">
          <label for="message-text" class="control-label">电影名称</label>
           <input type="text" name="mname" style="width:300px;" />
          </div>
                    <div class="form-group">
          <label for="message-text" class="control-label">演员</label>
            <input type="text" name="mactor" style="width:300px;"/>
          </div>
                    <div class="form-group">
          <label for="message-text" class="control-label">导演</label>
            <input type="text" name="mdaoyan" style="width:300px;"/>
          </div>
          
                    <div class="form-group">
          <label for="message-text" class="control-label">地区</label>
           <input type="text" name="mdiqu" style="width:300px;"/>
          </div>
              <div class="form-group">
          <label for="message-text" class="control-label">简介</label>
            <textarea type="text" name="mjie" style="width:300px;height: 100px;"></textarea>
          </div>
          
           <div class="form-group">
          <label for="message-text" class="control-label">分数</label>
            <input type="text" name="mfenshu" style="width:300px;"/>
          </div>
          
     
          
           
               </div>
           <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="submit" class="btn btn-primary"  >确定</button>
      </div>
        </form>
        
</html>