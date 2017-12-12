<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="DiabetesManagement.Dashboard" %>

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

        $(document).ready(function () {
            var watermark = 'Start typing here...';
            //init, set watermark text and class
            $("#<%=txtSearch.ClientID %>").val(watermark).addClass('watermark');

            //if blur and no value inside, set watermark text and class again.
            $("#<%=txtSearch.ClientID %>").blur(function () {
                if ($(this).val().length == 0) {
                    $(this).val(watermark).addClass('watermark');
                }
            });

            //if focus and text is watermrk, set it to empty and remove the watermark class
            $("#<%=txtSearch.ClientID %>").focus(function () {
                if ($(this).val() == watermark) {
                    $(this).val('').removeClass('watermark');
                }
            });
            $("#<%=txtSearch.ClientID %>").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/Service.asmx/GetCustomers") %>',
                        data: "{ 'prefix': '" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('-')[0],
                                    val: item.split('-')[1]
                                }
                            }))
                        },
                        error: function (response) {
                            alert(response.responseText);
                        },
                        failure: function (response) {
                            alert(response.responseText);
                        }
                    });
                },
                select: function (e, i) {
                    $("#<%=hfCustomerId.ClientID %>").val(i.item.val);
                },

                minLength: 1
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
           <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
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
                        <li class="first-item"><a class="active" href="#"><span>Home</span></a></li>
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
               
                <div id="sub-header">
                    <p class="breadcrumbs">Entery the Keyword to search:</p>
                    <asp:TextBox ID="txtSearch" runat="server" Width="884px" Height="16px"></asp:TextBox>
                    <asp:HiddenField ID="hfCustomerId" runat="server" />
                    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                </div>
                <!-- //#sub-header -->

                <!-- //#sidebar -->
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>
                <div id="main-content">
                    <asp:GridView ID="grdContentResult" runat="server" CellPadding="3" GridLines="Vertical" Width="894px" AutoGenerateColumns="False" Height="144px" Visible="False" AllowPaging="True" OnPageIndexChanging="grdContentResult_PageIndexChanging" EnableViewState="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" ShowFooter="True" CellSpacing="2">
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" BorderStyle="None" ForeColor="Black" BorderWidth="2px" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <br></br>

                                    <h3>
                                        <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Eval("Title") %>' NavigateUrl='<%# Eval("SourceUrl")%>'></asp:HyperLink></h3>
                                    <br></br>

                                    <p>
                                        '<%# Eval("Content") %>'
                                    </p>
                                    <br></br>

                                    <span>Source From :'<%# Eval("SourceFrom") %>' </span>
                                    <br></br>

                                    <asp:HyperLink ID="hlURL" runat="server" NavigateUrl='<%# Eval("SourceUrl") %>'>Read more...</asp:HyperLink>
                                    <br></br>
                                </ItemTemplate>

                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                 </ContentTemplate>
                      <Triggers>
                          <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                      </Triggers>
                     </asp:UpdatePanel>
                <div id="newcontainer">
                    <div class="newstape">
                        <div class="newstape-content">
                            <%foreach (System.Data.DataRow row in dtNewsTape.Rows)
                                { %>
                            <div class="news-block">
                                <h3><%=row["Title"] %></h3>
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
                        All rights reserved &copy;    </p>        
                </div>


            </div>


        </div>


    </form>

</body>
</html>
