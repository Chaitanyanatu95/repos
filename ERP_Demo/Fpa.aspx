﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fpa.aspx.cs" Inherits="ERP_Demo.Fpa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<html>
<head>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <script type="text/javascript" src = "https://code.jquery.com/jquery-1.10.2.js"></script>
    <script type="text/javascript" src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script type="text/javascript">
        window.onload = function () {
        var isProductTagDetails = $('#<%=productionTagDropDownList.ClientID %> option:selected').text();

            if (isProductTagDetails == "NO") {
                $("#<%=prodTagDetailsGrid.ClientID %>").hide();
            }
            else {
                $("#<%=prodTagDetailsGrid.ClientID %>").show();
            }
        }

        function onProductionTagDetailsSelected() {
            var isProductTagDetails = $('#<%=productionTagDropDownList.ClientID %> option:selected').text();

            if (isProductTagDetails == "NO") {
                $("#<%=prodTagDetailsGrid.ClientID %>").hide();
            }
            else {
                $("#<%=prodTagDetailsGrid.ClientID %>").show();
            }
        }
    </script>
    <style>
        table{
            padding-top:15px;
        }
        td{
            text-align:center;
        }
    </style>
    <title>pb plastics | fpa</title>
</head>
<body>
     <div id="page">
    <table runat="server" class="tableClass" style="width:60%; height:70%">
        <tr>
            <th runat="server" style="background-color:skyblue;text-align:center" colspan="7"><h3>FPA Worker</h3></th>
        </tr>
        <tr>
            <td><asp:Label ID="lblOperatorName" runat="server" style="font-weight:700; color:black;">Employee Name</asp:Label></td>
            <td><asp:Label ID="lblPartName" runat="server" style="font-weight:700; color:black; text-align:center">Part Name</asp:Label></td>
            <td colspan="4"><asp:Label ID="lblProductionHistory" runat="server" style="font-weight:700; color:black; text-align:center">Production History</asp:Label></td>
       </tr>
        <tr>
            <td><br /><asp:TextBox ID="operatorNameTextBox" runat="server" ReadOnly="true"></asp:TextBox></td>
            <td><br /><asp:DropDownList ID="partNameDropDownList" DataValueField="part_name" DataTextField="part_name" onselectedindexchanged="partNameChanged" runat="server" AutoPostBack="true"></asp:DropDownList></td>
            <td><asp:Label ID="lblShiftDetails" runat="server" style="font-weight:700; color:black; text-align:center">Shift</asp:Label><br /><asp:DropDownList ID="shiftDetailsDropDownList" DataValueField="shift_details" DataTextField="shift_details" OnSelectedIndexChanged="shiftChanged" AutoPostBack="true" runat="server"></asp:DropDownList></td>
            <td><asp:Label ID="lblEmployeeName" runat="server" style="font-weight:700; color:black; text-align:center">Employee Name</asp:Label><br /><asp:DropDownList ID="workerNameDropDownList" DataValueField="worker_name" DataTextField="worker_name" runat="server" AutoPostBack="true" OnSelectedIndexChanged="workerChanged"></asp:DropDownList></td>
            <td><asp:Label ID="lblProductionDate" runat="server" style="font-weight:700; color:black; text-align:center">Date</asp:Label><br /><asp:DropDownList ID="dateDropDownList" DataValueField="date_dpr" DataTextField="date_dpr" runat="server" OnSelectedIndexChanged="dateChanged" AutoPostBack="true"></asp:DropDownList></td>
            <td><asp:Label ID="lblTotalQty" runat="server" style="font-weight:700; color:black; text-align:center">Total Qty</asp:Label><br /><asp:TextBox ID="totalQtyTextBox" runat="server" ReadOnly="true" Width="70"></asp:TextBox></td>
       </tr>
        </table><br />
         <table runat="server" class="tableClass" style="width:50%; height:70%">
        <tr>
            <td><asp:Label ID="lblOperationType" runat="server" style="font-weight:700; color:black; text-align:center">Operation Type</asp:Label><br />
                <asp:DropDownList ID="operationTypeList" runat="server" DataValueField="type" DataTextField="type" OnSelectedIndexChanged="operationTypeListChanged" AutoPostBack="true">
                </asp:DropDownList></td>
            <td><asp:Label ID="lblnoofparts" runat="server" style="font-weight:700; color:black; text-align:center">Target Qty / hr</asp:Label><br />
                <asp:TextBox ID="noOfPartsTextBox" runat="server" Width="57px" ReadOnly="true"></asp:TextBox></td>
            <td><asp:Label ID="lblTotalTime" runat="server" style="font-weight:700; color:black; text-align:center">Total Time</asp:Label><br />
                <asp:TextBox ID="timeTextBox" runat="server" Width="50px"></asp:TextBox></td>
            <td><asp:Label ID="lblAcceptedQty" runat="server" style="font-weight:700; color:black; text-align:center">OK Quantity</asp:Label><br />
                <asp:TextBox ID="actualQtyTextBox" runat="server" Width="50px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblProdRejectionQty" runat="server" style="font-weight:700; color:black; text-align:center">Prod Rejection Quantity</asp:Label></td>
            <td><asp:Label ID="lblFpaRejectionQty" runat="server" style="font-weight:700; color:black; text-align:center">FPA Rejection Quantity</asp:Label></td>
            <td><asp:Label ID="lblWipQty" runat="server" style="font-weight:700; color:black; text-align:center">WIP Quantity</asp:Label></td>
            <td><asp:Label ID="lblRejectionCode" runat="server" style="font-weight:700; color:black; text-align:center">Rejection Code</asp:Label></td>
            
        </tr>
        <tr>
            <td><asp:TextBox ID="prodRejectionQtyTextBox" runat="server" Width="50px"></asp:TextBox></td>
            <td><asp:TextBox ID="FpaRejectionQtyTextBox" runat="server" Width="50px" AutoPostBack="True" OnTextChanged="FpaRejectionQtyTextBox_TextChanged"></asp:TextBox></td>
            <td><asp:TextBox ID="wipQtyTextBox" runat="server" Width="50px" ReadOnly="true"></asp:TextBox></td>
            <td>
                <asp:DropDownList ID="rejectionCodeList" runat="server" OnSelectedIndexChanged="WIPchanged" AutoPostBack="true">
                    <asp:ListItem Text="Select DropDown Value" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="1"></asp:ListItem>
                    <asp:ListItem Text="2"></asp:ListItem>
                    <asp:ListItem Text="3"></asp:ListItem>
                </asp:DropDownList></td>
            </tr>
             <tr>
                 <td colspan="4">
                     <asp:Label ID="lblEfficiency" runat="server" style="font-weight:700; color:black; text-align:center">Efficiency</asp:Label>
                     <br /><asp:TextBox ID="efficiencyTextBox" Width="50px" ReadOnly="true" runat="server"></asp:TextBox>
                 </td>
             </tr>
        </table>
         <br />
        <asp:Table runat="server" Width="20%" style="margin-left:auto; margin-right:auto; text-align:center">
        <asp:TableRow runat="server" HorizontalAlign="Center">
            <asp:TableCell ID="productionTagLabel" runat="server" HorizontalAlign="Center">PRODUCTION TAG (REQ)</asp:TableCell>
            <asp:TableCell runat="server" ColumnSpan="3"><asp:DropDownList ID="productionTagDropDownList" runat="server" Onchange="onProductionTagDetailsSelected()">
                    <asp:ListItem Value="NO">NO</asp:ListItem>
                    <asp:ListItem Value="YES">YES</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
   </asp:Table>

<asp:GridView ID="prodTagDetailsGrid" runat="server" AutoGenerateColumns="false" OnRowCommand="prodTagDetailsGrid_RowCommand" 
        OnRowDeleting="prodTagDetailsGrid_RowDeleting" DataKeyNames="id" ShowFooter="true" CssClass="Table1" Width="30%">
            <Columns>
                 <asp:TemplateField HeaderText="EMP NO">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("emp_no") %>' runat="server" />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmpNoFooter" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DATE">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("date") %>' runat="server" />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtDateFooter" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SHIFT">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("shift") %>' runat="server" />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtShiftFooter" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="QTY">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("qty") %>' runat="server" />
                    </ItemTemplate>
                    <FooterTemplate>
                       <asp:TextBox ID="txtQtyFooter" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~\Images\delete.png" CommandName="Delete" OnClientClick="Warning();" Height="20px" Width="20px" runat="server"/>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton ImageUrl="~\Images\addnew.png" CommandName="Add" Height="20px" Width="20px" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView><br />
               <center> 
            <asp:Button runat="server" Text="SAVE" OnClick="SaveBtn_Click"  CssClass="nextPage"/>
                    &nbsp;&nbsp;&nbsp; <asp:Button Text="CANCEL" runat="server" CssClass="nextPage" OnClick="Cancel_Click" CausesValidation="false" />
               </center>
            </div>
                
    <center>
               
    
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
        </center>
    </body>
</html>
    </asp:Content>
