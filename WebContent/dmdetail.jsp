<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Hero UI Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //Custom Theme files -->

    <script type="text/javascript" src="js/script.js"></script>
    <script src="js/jquery.min.js"></script>
    <!-- js -->
    <script src="js/modernizr.custom.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!--timer-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="js/jClocksGMT.js"></script>
    <script src="js/jquery.rotate.js"></script>
    <link rel="stylesheet" href="css/jClocksGMT.css">
    <style>
        body { font-family: Arial, sans-serif; }
    </style>
    <script>
        $(document).ready(function(){
            $('#clock_hou').jClocksGMT({offset: '-5', hour24: true});
            $('#clock_dc').jClocksGMT({offset: '-4', digital: false});
            $('#clock_india').jClocksGMT({offset: '+5.5'});
        });
    </script>
    <!--/timer-->
    <!-- video -->
    <link href="css/jplayer.blue.monday.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
    <script type="text/javascript">
        //<![CDATA[
        $(document).ready(function(){

            $("#jquery_jplayer_1").jPlayer({
                ready: function () {
                    $(this).jPlayer("setMedia", {
                        title: "Big Buck Bunny",
                        m4v: "http://www.jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v",
                        poster: "images/vid.png"
                    });
                },
                swfPath: "../../dist/jplayer",
                supplied: "m4v",
                size: {
                    width: "379px",
                    height: "250px",
                    cssClass: "jp-video-360p"
                },
                useStateClassSkin: true,
                autoBlur: false,
                smoothPlayBar: true,
                keyEnabled: true,
                remainingDuration: true,
                toggleDuration: true
            });
        });
        //]]>
    </script>
    <!-- //video -->
    <!--Calender -->
    <link rel="stylesheet" href="css/clndr.css" type="text/css" />
    <script src="js/underscore-min.js"></script>
    <script src= "js/moment-2.2.1.js"></script>
    <script src="js/clndr.js"></script>
    <script src="js/site.js"></script>
    <!--End Calender-->
    <script src="js/Chart.js"></script>
    <!--form-scroll-->
    <link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
    <!-- the jScrollPane script -->
    <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode">
        $(function()
        {
            $('.scroll-pane').jScrollPane();
        });
    </script>
    <!-- //the jScrollPane script -->
    <!-- the mousewheel plugin -->
    <script type="text/javascript" src="js/jquery.mousewheel.js"></script>
    <link rel="stylesheet" type="text/css" href="css/fd-slider.css">
    <script type="text/javascript" src="js/fd-slider.js"></script>
    <!-- start-smoth-scrolling-->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!--//end-smoth-scrolling-->


</head>
<body>
<!-- content -->
<div class="top-header">
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo">
                        <a href="2Home.html"><img src="images/logo.png" alt=""/></a>
                    </div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav" style="font-size: 18px;">
                        <li style="width: 120px;text-align: center;"><a href="dy">电影<span class="sr-only">(current)</span></a></li>
                        <li style="width: 120px;text-align: center;"><a href="dm">电视剧</a></li>
                        <li style="width: 120px;text-align: center;"><a href="mu">音乐</a></li>
                    </ul> 
                    <a href="admlogin.jsp" class="btn btn-info " style="width: 100px; float: right;margin-top: 8px;">管理员登录</a>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
</div>
<script src="js/bootstrap.js"> </script>

<!--content-->

<div class="content">
    <div class="container" style=" background-color: darkgray; width: 88%;max-width: 1140px;">
<c:forEach items="${list}" var="list">
        <div style=" width: 100%; margin-top: 20px;">
            <img src="${list.dpicy}" style="width: 100%;border-radius: 20px 20px 20px 20px;" />
        </div>

        <div style=" width: 90%; color: black; padding-left: 5%;font-size: 20px; ">
            <table width="100%" >

                <tr><td>&nbsp;</td></tr>

                <tr>
                    <td></td>
                    <td></td>
                </tr>

                <tr><td>&nbsp;</td></tr>

                <tr>
                    <td width="20%">电视剧名称：</td>
                    <td>${list.dname}</td>
                </tr>

                <tr><td>&nbsp;</td></tr>

                <tr>
                    <td>主演：</td>
                    <td>${list.dactor}</td>
                </tr>

                <tr><td>&nbsp;</td></tr>

                <tr>
                    <td>导演：</td>
                    <td>${list.ddaoyan}</td>
                </tr>

                <tr><td>&nbsp;</td></tr>

                <tr>
                    <td>地区：</td>
                    <td>${list.ddiqu}</td>
                </tr>

                <tr><td>&nbsp;</td></tr>

                <tr>
                    <td>分数：</td>
                    <td><span class="label label-pill label-info">${list.dfenshu}</span></td>
                </tr>

                <tr><td>&nbsp;</td></tr>

                <tr>
                    <td>电视剧简介：</td>
                    <td>${list.djie}</td>
                </tr>

                <tr><td>&nbsp;</td></tr>


            </table>

        </div>

</c:forEach>
    </div>
    
    
    <div style=" background-color: darkgrey;  width: 88%;max-width: 1140px;" class="container">
        <hr style="border: 1px solid dimgray;width: 88%;"/>
        <a class="btn btn-info " style="font-size: 18px;padding:8px;width: 150px;margin-bottom: 20px;margin-left: 50px;" href="login.jsp">网友评论</a>
    </div>


</div>


</body>

</html>
