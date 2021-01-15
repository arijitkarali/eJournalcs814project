<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="eLibrary.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="padding:20px">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <a href="Homepage.aspx" style=" font-size:20px;"><< Back to Home</a><br><br>
                <div class="card text-white bg-danger mb-3" style="max-width: 540px;">
                    <div class="row g-0" >
                        <div class="col-md-5" style="background:#bf0d0d">
                            <img src="images/adminlogo.png" width="200" height="180" alt="..." style="padding:30px; padding-bottom:0px; padding-right:10px;">
                        </div>
                        <div class="col-md-7">
                            <div class="card-body">
                                <h5 class="card-title"><center>Admin Login</center>&nbsp;</h5>
                                <div class ="row">
                                    <div class="col">
                                            <center><asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ADMIN-ID"></asp:TextBox></center>
                                        <hr>
                                    </div>
                                </div>
                                <div class ="row" style="padding-bottom:20px;">
                                    <div class="col">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="form-group">
                    <center><asp:Label ID="Label1" runat="server" Text="RoleID"></asp:Label>&emsp;&emsp;
                <asp:TextBox ID="TextBox3" placeholder="<Rolename><ID>" runat="server" Width="377px" ></asp:TextBox><br/><br/>
                    <asp:Button class="btn btn-success btn-block" ID="Button1" runat="server" Text="LOG IN" Width="540px" OnClick="Button1_Click" /></center>
                </div>
                <p></p>
            </div>
        </div>
    </div>

</asp:Content>
