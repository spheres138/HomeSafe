<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>jQuery WeUI</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

    <meta name="description" content="Write an awesome description for your new site here. You can edit this line in _config.yml. It will appear in your document head meta (for Google search results) and in your feed.xml site description.
">
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">

    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js" ></script>
    <script type="text/javascript">

        /**
         * 每10秒自动刷新一次数据
         * **/
        window.onload=function(){
         sendRequest();
         setInterval(function(){
             sendRequest();},
             5000);
        }



        /**
         * 读取数据，对应数据接口
         *  @constructor
         * **/
        function sendRequest(){
            $.ajax({
                type:"GET",
                url:"/mgr/one.do",
                dataType:"json",
                success:function(data){SeeData(data);},
            });
        };


        /**
         * 数据处理
         * **/
        function SeeData(data) {
            var smoke=new Array(5);
            var human=new Array(5);
            var upd=new Array(5);
            var temperature=new Array(5);
            var pm25=new Array(5);
            var updateDate=new Array(5);
            $.each(data, function (index) {
                temperature[index] = data[index].temperature;
                pm25[index] = data[index].pm25;
                upd[index] = new Date(data[index].updateDate);
                updateDate[index]=upd[index].getFullYear()+"-"+(upd[index].getMonth() + 1)+"-"+upd[index].getDay()+" "+ (upd[index].getHours() < 10 ? "0" + +upd[index].getHours() :  +upd[index].getHours()) +":"+ (upd[index].getMinutes() < 10 ? "0" + +upd[index].getMinutes() :  +upd[index].getMinutes()) +":"+ (upd[index].getSeconds() < 10 ? "0" + +upd[index].getSeconds() : +upd[index].getSeconds());
                if(data[index].smoke=="1"){smoke[index] = "有烟"; }else {smoke[index] = "无烟"; };
                if(data[index].human=="1"){human[index] = "有人";}else {human[index] = "没人";};
                if(index==0){
                    $("#WD").html(temperature[index]);
                    $("#PM25").html(pm25[index]);
                    $("#YW").html(smoke[index]);
                    $("#TG").html(human[index]);
                };
                if(index>0){
                    $("#LS").html("<font color=\"#0e29ff\">"+temperature[1]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#ff331d\">"+pm25[1]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#3dff64\">"+smoke[1]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#ff3bd0\">"+human[1]+"</font>"+"<br>"+
                        "<font color=\"#ccc35a\">"+updateDate[1]+"</font>"+"<br>"+
                        "<font color=\"#0e29ff\">"+temperature[2]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#ff331d\">"+pm25[2]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#3dff64\">"+smoke[2]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#ff3bd0\">"+human[2]+"</font>"+"<br>"+
                        "<font color=\"#ccc35a\">"+updateDate[2]+"</font>"+"<br>"+
                        "<font color=\"#0e29ff\">"+temperature[3]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#ff331d\">"+pm25[3]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#3dff64\">"+smoke[3]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#ff3bd0\">"+human[3]+"</font>"+"<br>"+
                        "<font color=\"#ccc35a\">"+updateDate[3]+"</font>"+"<br>"+
                        "<font color=\"#0e29ff\">"+temperature[4]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#ff331d\">"+pm25[4]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#3dff64\">"+smoke[4]+"</font>"+"&nbsp;&nbsp;&nbsp;"+"<font color=\"#ff3bd0\">"+human[4]+"</font>"+"<br>"+
                        "<font color=\"#ccc35a\">"+updateDate[4]+"</font>"
                    );
                };
            });
        }
      </script>
</head>

<body ontouchstart>
<header >
    <style>
        *{margin:0px;padding:0px;}
        .Header{background: #ccc35a;}
    </style>
    <div class="Header" style="text-align: center;"><h1>家具安全</h1></div>
</header>
<div class="weui-cell" style="border:1px solid #000000;">
    <div class="weui-cell__hd">温度：<br></div>
    <div class="weui-cell__bd" style="color: #0e29ff;Font-weight:bold;Font-size:60px;text-align: left ;" id="WD"></div>
    <div class="weui-cell__hd">PM2.5：<br></div>
    <div class="weui-cell__bd" style="color: #ff331d;Font-weight:bold;Font-size:60px;text-align: left ;"  id="PM25"></div>
</div>

<div class="weui-cell" style="border:1px solid #000000;">
    <div class="weui-cell__hd">烟雾：<br></div>
    <div class="weui-cell__bd" style="color: #3dff64;Font-weight:bold;Font-size:60px;text-align: left ;" id="YW"></div>
    <div class="weui-cell__hd">体感：<br></div>
    <div class="weui-cell__bd" style="color: #ff3bd0;Font-weight:bold;Font-size:60px;text-align: left ;" id="TG"></div>
</div>


<div style="border:1px solid #000000;">
<div class="weui-cell">
    <div class="weui-cell__hd">记录(温度·PM2.5·烟雾·体感·时间)：<br></div>
</div>
    <div class="weui-cell" >
            <div class="weui-cell__bd" style="color: #0e29ff;Font-weight:bold;Font-size:20px;text-align: center ;" id="LS"></div>
    </div>
</div>
</body>

</html>