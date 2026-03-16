<%@ Page Title="Books" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeFile="Books.aspx.cs"
    Inherits="ProtectedContent_Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Database Driven Password Protected ASP.NET Web Application: <i>Books</i></h2>

    <p>Please choose author from the menu to view publications:</p>

    <asp:Label ID="authorsLabel" runat="server" Text="Authors: "
        AssociatedControlID="authorsDropDownList"></asp:Label>

    <asp:DropDownList ID="authorsDropDownList" runat="server"
        AutoPostBack="True"
        DataSourceID="authorsLinqDataSource"
        DataTextField="Name"
        DataValueField="AuthorID"
        OnSelectedIndexChanged="authorsDropDownList_SelectedIndexChanged">
    </asp:DropDownList>

    <br /><br />

    <asp:GridView ID="titlesGridView" runat="server"
        AutoGenerateColumns="False"
        DataSourceID="titlesLinqDataSource"
        AllowPaging="True"
        PageSize="10"
        Width="100%">
        <Columns>
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
            <asp:BoundField DataField="Title1" HeaderText="Title" />
            <asp:BoundField DataField="EditionNumber" HeaderText="Edition Number" />
            <asp:BoundField DataField="Copyright" HeaderText="Copyright" />
        </Columns>
    </asp:GridView>

    <asp:LinqDataSource ID="authorsLinqDataSource" runat="server"
        OnSelecting="authorsLinqDataSource_Selecting">
    </asp:LinqDataSource>

    <asp:LinqDataSource ID="titlesLinqDataSource" runat="server"
        OnSelecting="titlesLinqDataSource_Selecting">
    </asp:LinqDataSource>

</asp:Content>