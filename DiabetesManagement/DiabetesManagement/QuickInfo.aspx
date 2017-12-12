<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuickInfo.aspx.cs" Inherits="DiabetesManagement.Dashboard" %>

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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>

    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.jsdelivr.net/jquery.event.drag/2.2/jquery.event.drag.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="Scripts/jquery.newstape.js"></script>
    <script src="Scripts/Jpopup.js"></script>
    <script>
        $(function () {
            $('.newstape').newstape();
        });

        
    </script>
</head>
<body>
    <form id="form2" runat="server">
           <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress2" runat="server">
            <ProgressTemplate>
            <div class="modal">
        <div class="center">
            <img alt="Loading .." src="ajax-loader.gif" />
        </div>
    </div>
                </ProgressTemplate>
        </asp:UpdateProgress>


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
                <!-- //#header -->
                 
            
               
                <!-- //#sub-header -->

                <!-- //#sidebar -->
                <div id="main-content">
                    
                                    <br></br>

                                   
            <h2>Overview</h2><br /><p>Type 2 diabetes, once known as adult-onset or noninsulin-dependent diabetes, is a chronic condition that affects the way your body metabolizes sugar (glucose), your body's important source of fuel.</p>
<p>With type 2 diabetes, your body either resists the effects of insulin &mdash; a hormone that regulates the movement of sugar into your cells &mdash; or doesn't produce enough insulin to maintain a normal glucose level.</p><div id='adsmobileBottom'></div>
<p>More common in adults, type 2 diabetes increasingly affects children as childhood obesity increases. There's no cure for type 2 diabetes, but you may be able to manage the condition by eating well, exercising and maintaining a healthy weight. If diet and exercise aren't enough to manage your blood sugar well, you also may need diabetes medications or insulin therapy.</p><br />
        
            

<div>
    <div>
        
    </div>

</div>

            
        
            
            <h2>Symptoms</h2><br /><p>Signs and symptoms of type 2 diabetes often develop slowly. In fact, you can have type 2 diabetes for years and not know it. Look for:</p>
<ul>
    <li><b>Increased thirst and frequent urination.</b> Excess sugar building up in your bloodstream causes fluid to be pulled from the tissues. This may leave you thirsty. As a result, you may drink &mdash; and urinate &mdash; more than usual.</li><br />
    <li><b>Increased hunger.</b> Without enough insulin to move sugar into your cells, your muscles and organs become depleted of energy. This triggers intense hunger.</li><br />
    <li><b>Weight loss.</b> Despite eating more than usual to relieve hunger, you may lose weight. Without the ability to metabolize glucose, the body uses alternative fuels stored in muscle and fat. Calories are lost as excess glucose is released in the urine.</li><br />
    <li><b>Fatigue.</b> If your cells are deprived of sugar, you may become tired and irritable.</li><br />
    <li><b>Blurred vision.</b> If your blood sugar is too high, fluid may be pulled from the lenses of your eyes. This may affect your ability to focus.</li><br />
    <li><b>Slow-healing sores or frequent infections.</b> Type 2 diabetes affects your ability to heal and resist infections.</li><br />
    <li><b>Areas of darkened skin.</b> Some people with type 2 diabetes have patches of dark, velvety skin in the folds and creases of their bodies &mdash; usually in the armpits and neck. This condition, called acanthosis nigricans, may be a sign of insulin resistance.</li><br />
</ul><br />
                                    <p>Source: Mayo Clinic</p>
                                    <a href="https://www.mayoclinic.org/diseases-conditions/type-2-diabetes/symptoms-causes/syc-20351193">Read more from Mayo Clinic</a><br />
                                    <a href="http://www.diabetes.org/diabetes-basics/type-2/?loc=util-header_type2?referrer=http://google.diabetes.org/search?site=Diabetes&client=diabetes&entqr=3&oe=ISO-8859-1&ie=ISO-8859-1&ud=1&proxystylesheet=diabetes&output=xml_no_dtd&proxyreload=1&q=insulin%20and%20type%202%20diabetes">Read more from American Diabetic Association</a>

                                    <br></br>
                               
                </div>
               
                    
                <div id="newcontainer">
                    <div class="newstape">
                        <div class="newstape-content">
                            <%foreach (System.Data.DataRow row in dtNewsTape.Rows)
                                { %>
                            <div class="news-block">
                                <h3><%=row["Title"] %><</h3>
                                <small><%=row["PublishedDate"] %></small>
                                <p class="text-justify">
                                    <%=row["Content"] %>
                                </p>
                                <div class="text-right">
                                    <a href="<%=row["URL"] %>">More</a>
                                </div>
                                <hr />
                            </div>
                            <%} %>
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
