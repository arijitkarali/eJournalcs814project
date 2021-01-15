<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="eLibrary.Userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="padding:20px">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <a href="Homepage.aspx" style=" font-size:20px;"><< Back to Home</a><br><br>
                <div class="card text-white bg-primary mb-3" style="max-width: 540px;">
                    <div class="row g-0" >
                        <div class="col-md-5" style="background:#073670;">
                          <img src="images/userlogo.png" width="200" height="200" alt="..." style="padding:30px; padding-bottom:10px; padding-right:10px;"/>
                        </div>
                        <div class="col-md-7">
                            <div class="card-body">
                                <h5 class="card-title"><center>Member Login</center>&nbsp;</h5>
                                <div class ="row">
                                    <div class="col">
                                            <center><asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="USER-ID"></asp:TextBox></center>
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

                <div class="form-group">
                    <center><asp:Button class="btn btn-success btn-block" ID="Button1" runat="server" Text="LOG IN" Width="540px" OnClick="Button1_Click" /></center>
                </div>
                <p></p>
                 <div class="form">
                    <center><a href="Usersignup.aspx"><input class="btn btn-block " style="width:540px; background:#0c3852; color:white" id="Button2" type="button" value="NEW USER? Sign Up Here"></a></center>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
