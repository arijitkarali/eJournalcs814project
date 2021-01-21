<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="IS.aspx.cs" Inherits="eLibrary.sections.IS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br/><br/>
    <h2>Section: Information security</h2>
    <br/><hr>

    <div class="row">
        <asp:sqldatasource ID="sqldatasource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:con %>"
            SelectCommand="SELECT subID,title,authors,date,kewords,Affiliation,pdflink,imglink FROM [articletbl] WHERE (category='s2' AND status='submitted');"></asp:sqldatasource>
        <div class="col">
            <asp:gridview class="table table-striped table-bordered" ID="gridview1" AutoGenerateColumns="False" runat="server" 
                DataSourceID="sqldatasource1">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-10">

                                        Submission no:
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Eval("subID") %>'></asp:Label>
                                        &nbsp;|
                                        <br />
                                        Title:
                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("title") %>'></asp:Label>
                                        &nbsp;| Authors:
                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("authors") %>'></asp:Label>
                                        &nbsp;| Affiliation:
                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("Affiliation") %>'></asp:Label>
                                        &nbsp;| keywords:(<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("kewords") %>'></asp:Label>
                                        )
                                        <br />
                                        <a href="<%# Eval("pdflink") %> "><asp:Button ID="Button1" CssClass="btn btn-sm btn-primary pull-left" Text="download" runat="server" Font-Bold="True" /></a>

                                    </div>
                                    <div class="col-lg-2">
                                        <asp:Image ID="image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("imglink") %>'></asp:Image>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
  
                    </asp:TemplateField>
                </Columns>
            </asp:gridview>



        </div>
    </div>

</asp:Content>
