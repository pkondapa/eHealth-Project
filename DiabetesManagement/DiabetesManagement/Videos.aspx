<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="DiabetesManagement.Videos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>Health Life</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link type="text/css" media="screen" rel="stylesheet" href="stylesheets/reset.css" />
    <link type="text/css" media="screen" rel="stylesheet" href="stylesheets/main.css" />

    <style type="text/css">
        input.watermark {
            color: #999;
        }

        input {
            padding: 4px;
            text-indent: 5px;
            width: 200px;
            font-size: 14px;
        }
        .auto-style1 {
            position: relative;
            left: 597px;
            top: -343px;
        }
        ul li a{ font-family:"Lucida Console", Monaco, monospace;
                 line-height: 170%;
        }
    </style>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>

    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.jsdelivr.net/jquery.event.drag/2.2/jquery.event.drag.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        function MyFunction(video){
            document.getElementById('myframe').src = video;
        }
    </script>
</head>
<body>
    <form id="form2" runat="server">
          
       <div>

            <div id="container">
                <div id="header">
                    <h1><a href="#">Diabetes Management</a></h1>
                  
                    <ul id="main-nav" class="auto-style3">
                        <li class="first-item"><a class="active" href="Dashboard.aspx"><span>Home</span></a></li>
                        <li>
                            <ul class="thumb">
                                <li><a href="#"
                                    data-title="Know your risk?" data-width="512" data-height="384">
                                    Know your risk?</a></li>
                            </ul>
                        </li>
                        <li><a href="http://www.diabetes.org/are-you-at-risk/my-health-advisor/?loc=atrisk-slabnav"><span>eHealth Advisor</span></a></li>
                        <li><a href="QuickInfo.aspx"><span>Quick Info</span></a></li>
                        <li><a href="Videos.aspx"><span>Videos</span></a></li>
                    </ul>
                    <!-- //#main-nav -->
                </div>
                <div id="main-content">
                    <div>
                    
                    <iframe id="myframe" width="560" height="315" src="http://www.youtube.com/embed/T4lVLrbV5no" frameborder="0" allowfullscreen></iframe>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="auto-style1">
                        <ul>
                            <br />
                            <li><h2>Videos</h2></li>
                            <li><a href="#" onclick="MyFunction('https://www.youtube.com/embed/MHlWM8_iqfA?autoplay=1');return false;">Understanding Type 2 Diabetes</a></li>
                            <li><a href="#" onclick="MyFunction('https://www.youtube.com/embed/AVJwcwbL054?autoplay=1');return false;">Symptoms</a></li>
                            <li><a href="#" onclick="MyFunction('https://www.youtube.com/embed/pAb0Odjj5xE?autoplay=1');return false;">Diagnosis</a></li>
                            <li><a href="#" onclick="MyFunction('https://www.youtube.com/embed/qSpAF-JUKEA?autoplay=1');return false;">Treatment and Management</a></li>
                            <li><a href="#" onclick="MyFunction('https://www.youtube.com/embed/PfEQxrmiqUs?autoplay=1');return false;">Fitness & Type 2 Diabetes</a></li>
                            <li><a href="#" onclick="MyFunction('https://www.youtube.com/embed/lGPbOQ_vudk?autoplay=1');return false;">Diet plans</a></li>
                            <li><a href="#" onclick="MyFunction('https://www.youtube.com/embed/eRfMbfyJCjA?autoplay=1');return false;">Facts about Type 2 Diabetes </a></li>                                
                            <li><a href="#" onclick="MyFunction('https://www.youtube.com/embed/8NY2odNiBho?autoplay=1');return false;">Insulin in Managing Diabetes</a></li>
                            <li><a href="#" onclick="MyFunction('https://www.youtube.com/embed/QPEbxQaS_f8?autoplay=1');return false;">The A1c Test</a></li>
                            <li><a href="#" onclick="MyFunction('https://www.youtube.com/embed/dNVB6LOpTzo?autoplay=1');return false;">Awareness</a></li>
                               
                        </ul>
                    </div>
                        </div>
                </div>
           
               
                    
               
                <!-- //#main-content -->
                <div id="footer">
                    <p class="copyright">
                        All rights reserved &copy;            
                </div>


            </div>


        </div>


    </form>

</body>
</html>
