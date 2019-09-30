﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newVendor.aspx.cs" Inherits="ERP_Demo.newVendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="Table1" runat="server" CssClass="tableClass" Height="40%" Width="30%">
        <asp:TableRow runat="server" TableSection="TableHeader" HorizontalAlign="Center" CssClass="CustomerHeader">
            <asp:TableCell runat="server" ColumnSpan="3"><h3>VENDOR MASTER</h3></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" CssClass="margin">VENDOR ID</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"><asp:TextBox runat="server" ID="vendorIdTextBox" ReadOnly="true" BackColor="#f0f0f0" Font-Bold="true" CssClass="marginTextBox"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell ID="vendorNameLabel" runat="server" CssClass="margin">VENDOR NAME</asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"> <asp:TableCell runat="server"><asp:TextBox ID="vendorNameTextBox" runat="server" CssClass="marginTextBox"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell ID="vendorAddressOneLabel" runat="server" CssClass="margin">ADDRESS ONE</asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell runat="server"><asp:TextBox TextMode="multiline" Columns="40" Rows="5" CssClass="marginTextBox"  ID="vendorAddressOneTextBox" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell ID="vendorAddressTwoLabel" runat="server" CssClass="margin">ADDRESS TWO</asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell runat="server"><asp:TextBox TextMode="multiline" Columns="40" Rows="5" CssClass="marginTextBox"  ID="vendorAddressTwoTextBox" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell ID="vendorContactLabel" runat="server" CssClass="margin">CONTACT NO</asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell runat="server"><asp:TextBox ID="vendorContactNoTextBox" CssClass="marginTextBox" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell ID="vendorEmailLabel" runat="server" CssClass="margin">EMAIL-ID</asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell runat="server"><asp:TextBox ID="vendorEmailIdTextBox" CssClass="marginTextBox" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell ID="vendorContactPersonLabel" runat="server" CssClass="margin">CONTACT PERSON</asp:TableCell></asp:TableRow>  
        <asp:TableRow runat="server"><asp:TableCell runat="server"><asp:TextBox ID="vendorContactPersonTextBox" CssClass="marginTextBox" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell ID="vendorGstNumberLabel" runat="server" CssClass="margin">GST NUMBER</asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell runat="server"><asp:TextBox ID="vendorGstDetailsTextBox" CssClass="marginTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server"  
                    ControlToValidate="vendorGstDetailsTextBox" ErrorMessage="GST Number should be 15 in length..!"  
                    ValidationExpression="^[0-9,A-Z]{15}$" CssClass="required"></asp:RegularExpressionValidator></asp:TableCell></asp:TableRow>
           <asp:TableRow ID="saveRowLabel" runat="server"> <asp:TableCell ID="saveCellLabel" runat="server"><asp:Button ID="saveButtonLabel" runat="server" Text="SAVE" OnClick="SaveBtn_Click" CssClass="custButtonCss" /> 
            <asp:Button ID="cancelLabel" Text="CANCEL" runat="server" OnClick="Cancel_Click" CausesValidation="false" CssClass="nextPage" /></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
