<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="Usersignup.aspx.cs" Inherits="eLibrary.Usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container-fluid" style=" padding:30px;">
    <div class="row">
      <div class="col-md-6 mx-auto" style="border:1px groove; padding:20px;"">
        <center><img src="images/userlogo.png" width="100px">
                <p><h4>SIGN UP</h4></p>
        </center>
        
          <div class="row">
            <div class="col-md-6" >
              <label>First Name</label>
              <asp:TextBox CssClass="form-control" Placeholder="John" ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-6">
              <label>Last Name</label>
              <asp:TextBox CssClass="form-control" Placeholder="Smith" ID="TextBox2" runat="server"></asp:TextBox>
            </div>
          </div>
            <br>
            <div class="row">
            <div class="col-md-6" >
              <label>Date of Birth</label>
              <asp:TextBox CssClass="form-control" Placeholder="dd-mm-yyyy" ID="TextBox3" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-6">
              <label>Pincode</label>
              <asp:TextBox CssClass="form-control" Placeholder="6 digit pin code" ID="TextBox4" runat="server"></asp:TextBox>
            </div>
          </div>
            <br>
            <div class="row">
            <div class="col-md-6" >
              <label>Email (to be used as user ID)</label>
              <asp:TextBox CssClass="form-control" Placeholder="<your_email>@domain" ID="TextBox5" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-6">
              <label>Contact Number</label>
              <asp:TextBox CssClass="form-control" Placeholder="10 digit mobile number" ID="TextBox6" runat="server"></asp:TextBox>
            </div>
           </div>
            <br>
            <div class="row">
                <div class="col-md-12">
              <label>Password</label>
              <asp:TextBox CssClass="form-control" Placeholder="set a password" ID="TextBox7" runat="server"></asp:TextBox>
            </div>
            </div>
            <br><br>
            <div class="form-group">
                    <center><asp:Button class="btn btn-success btn-block" style="background:#0c3852; color:white" ID="Button1" runat="server" Text="SIGN UP" Width="540px" OnClick="Button1_Click" />
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox8" runat="server" Height="43px" Width="214px"></asp:TextBox>
                    </center>
                </div>
            
        
      </div>
    </div>
  </div>

</asp:Content>
