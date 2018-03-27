<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="LoginPage" %>


<asp:Content ID="ContentHeader" ContentPlaceHolderID="ContentPlaceHolderHeader" Runat="Server">
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li>
                  <asp:Label ID ="lblError" runat ="server" Text ="error label" Visible="false" style="color: #26a69a; padding: 10px;"></asp:Label>
                </li>
                <li class="input-field col s6">
                  <i class="material-icons prefix">account_circle</i>
                  <asp:TextBox ID="txtEmail" CssClass ="validate" runat="server" placeholder="Email"></asp:TextBox>
                </li>

                <li class="input-field col s6">
                  <i class="material-icons prefix">lock</i>
                  <asp:TextBox ID="txtPassword" CssClass ="validate" runat="server" placeholder="Password"></asp:TextBox>
                </li>
                <li>
                    <asp:Button ID ="btnLogin" CssClass ="btn" runat="server" Text="Login" OnClick="btnLogin_Click" style="margin-top: 1em; margin-left: 5px;"/>
                </li>
              </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
              
               
  


<div class="table count-down">
            <div class="row" style="background:transparent; margin-top:2.25em; margin-left:87%; margin-right:5px;">
                <asp:Button ID="btnApply" runat="server" Text="Apply To Join Motiv8" CssClass="btn" OnClick="btnApply_Click" style="background: rgba(255,255,255, 0.9); color:#1d7d74; width:100%; font-size.75vw;" />
            </div>

			<div class="row count-down">
            <img src="icons/rwds-03.png" style="width:70%; padding-top:50px;">
			<h1 style="font-size:8vw;">$5,000</h1>
                <h4 style="font-size:3vw; margin-top:2em; text-decoration: underline;"> <strong> Welcome to MOTIV8 </strong></h4>
				<p style="font-size:2vw; padding-left:50px; padding-right:50px;  padding-bottom:50px; text-align:center;">A web application that helps inner company motivation to continue to follow the companies values. Login to see what rewards you can earn and see what rewards you can give. </p>
			</div>
            
</div>

        
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
    

</asp:Content>