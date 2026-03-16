<%@ Page Title="Microsoft ASP.NET Web App Track: Password-Protected Database Driven Web App: Books" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>description page.</h3>
    <p>This ASP.NET Web Forms application is a password-protected website that allows users to view books stored in a database. After logging in, users can select an author from a dropdown list and see the books written by that author displayed in a table. The page retrieves data dynamically from a SQL database using LINQ queries and displays the results in a GridView.</p>
</asp:Content>
