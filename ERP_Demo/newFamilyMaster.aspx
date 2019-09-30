﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newFamilyMaster.aspx.cs" Inherits="ERP_Demo.newFamilyMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Height="40%" Width="17%" CssClass="tableClass">
        <asp:TableRow runat="server" TableSection="TableHeader" HorizontalAlign="Center" CssClass="CustomerHeader">
            <asp:TableCell runat="server" ColumnSpan="2"><h3>PRODUCT CATEGORY MASTER</h3></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server" VerticalAlign="Bottom">
            <asp:TableCell runat="server" CssClass="margin">ADD NEW CATEGORY</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" CssClass="margin"><asp:TextBox ID="familyTextBox" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"><asp:Button runat="server" Text="SAVE" OnClick="SaveBtn_Click" CssClass="custButtonCss" />
            <asp:Button Text="CANCEL" runat="server" OnClick="Cancel_Click" CausesValidation="false" CssClass="nextPage" /></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>