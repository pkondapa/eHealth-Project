﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VB.aspx.vb" Inherits="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods = "true">
        </asp:ScriptManager>
      <asp:TextBox ID="txtContactsSearch" runat="server"></asp:TextBox>
        <cc1:AutoCompleteExtender ServiceMethod="SearchCustomers" MinimumPrefixLength="2"
            CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" TargetControlID="txtContactsSearch"
            ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "false" >
        </cc1:AutoCompleteExtender>
    </div>
    </form>
</body>
</html>
