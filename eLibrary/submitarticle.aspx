<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="submitarticle.aspx.cs" Inherits="eLibrary.submitarticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style=" padding:30px;">
        <div class="row">
            <div class="col-md-6 mx-auto" style="border:1px groove; padding:20px;"">
                <div class="row">
                    <div class="col-md-12" >
                        <label>TITLE*</label>
                        <asp:TextBox CssClass="form-control" Placeholder="Title of paper" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" >
                        <label>shorttitle*(this must be a unique word for all your submission)</label>
                        <asp:TextBox CssClass="form-control" Placeholder="shorttitle" ID="TextBox6" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" >
                        <label>Authors*</label>
                        <asp:TextBox CssClass="form-control" Placeholder="Author A, Author B.." ID="TextBox2" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" >
                        <label>Date*</label>
                        <asp:TextBox CssClass="form-control" Placeholder="dd/mm/yyyy" ID="TextBox3" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" >
                        <label>Keywords</label>
                        <asp:TextBox CssClass="form-control" Placeholder="keyword1,keyword2,.." ID="TextBox4" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" >
                        <label>Affiliation*</label>
                        <asp:TextBox CssClass="form-control" Placeholder="" ID="TextBox5" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" >
                        <label>Category*</label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Enabled="true" Text="--Select--" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="TheoreticalCS" Value="s1"></asp:ListItem>
                            <asp:ListItem Text="Information security" Value="s2"></asp:ListItem>
                            <asp:ListItem Text="Software Engineering" Value="s3"></asp:ListItem>
                            <asp:ListItem Text="Network and communication" Value="s4"></asp:ListItem>
                            <asp:ListItem Text="Mathematics" Value="s5"></asp:ListItem>
                            <asp:ListItem Text="Technology" Value="s6"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div><br/>
                <div class="row">
                    <div class="col-md-12" >
                        <label>Upload Manuscript*(pdf)</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div><br/>
                <div class="row">
                    <div class="col-md-12" >
                        <label>Upload thumbnail*(jpg)</label>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </div>
                </div><br/>
                <div class="row">
                    <div class="col-md-12" >
                        <asp:Button ID="Button1" class="btn btn-lg btn-success" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
                    </div>
                </div><br/>
            </div>
        </div>
    </div>


</asp:Content>
