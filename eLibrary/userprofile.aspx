﻿<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="eLibrary.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="profilesection" style="padding:50px;background-color:aquamarine; color:black;font-weight:bolder">
        <h2>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
            
        </h2>
        <br/>
        <h4><asp:label ID="Label2" runat="server" text="Label" visible="false"></asp:label></h4>
        <br/>
        
    </div>
    <br/>
    <asp:Button ID="Button2" class="btn btn-lg pull-left btn-success" runat="server" Text="Submit an article" PostBackUrl="~/submitarticle.aspx" />
    <br/><hr>
    <h3>your articles are :</h3>
    <div class="row">
        
        <div class="col">
            <asp:gridview class="table table-striped table-bordered" ID="gridview1" AutoGenerateColumns="False" runat="server" 
                />
                
            



        </div>
    </div>

</asp:Content>
