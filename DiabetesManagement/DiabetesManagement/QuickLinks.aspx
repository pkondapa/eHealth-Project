<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_old.aspx.cs" Inherits="DiabetesManagement.Dashboard" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
    </style>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
</head>
<body>
    <form id="form2" runat="server">
        <div>

            <div id="container">
                <div id="header">
                    <h1><a href="#">Diabetes Management</a></h1>
                 
                    <ul id="main-nav" class="auto-style3">
                        <li class="first-item"><a class="active" href="Dashboard.aspx"><span>Home</span></a></li>
                        <li><a href="http://www.diabetes.org/are-you-at-risk/diabetes-risk-test/"><span>Know Your Risk</span></a></li>
                        <li><a href="http://www.diabetes.org/are-you-at-risk/my-health-advisor/?loc=atrisk-slabnav"><span>eHealth Advisor</span></a></li>
                        <li><a href="#"><span>Health Articles</span></a></li>
                        <li><a href="#"><span>FAQ</span></a></li>
                    </ul>
                    <!-- //#main-nav -->
                </div>
                </div>
            </div>
        </form>
</body>

</html>