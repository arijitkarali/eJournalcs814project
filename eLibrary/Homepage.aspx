<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="eLibrary.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
.grid-container {
  padding-top:100px;
  display: grid;
  grid-row-gap:60px;
  grid-column-gap:20px;
  grid-template-columns: auto auto auto;
  padding: 100px;
  height:100%;
  width:100%;
}
.grid-item {
  background-color: rgb(47, 44, 43);
  width:300px;
  height:150px;
  border: none;
  padding: 20px;
  font-size: 30px;
  text-align: center;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid-container" style=" background-image:url(images/p4.jpg)"> 
  
  
        <a href="sections/TheoreticalCS.aspx"> <div class="grid-item">Theoretical Computer science</div>  </a>
        <a href="IS.aspx"> <div class="grid-item">Information security</div>  </a>
        <a href="SoftwareEngg.aspx"> <div class="grid-item">Software enginnering</div>  </a>
        <a href="NetworkComm.aspx"> <div class="grid-item">Networking and communication</div>  </a>
        <a href="math.aspx"> <div class="grid-item">Mathematics</div>  </a>
        <a href="technology.aspx"> <div class="grid-item">Technology</div>  </a>

  
</div>
</asp:Content>
