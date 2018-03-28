<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="ContentHeader" ContentPlaceHolderID="ContentPlaceHolderHeader" Runat="Server">
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li class="input-field col s6">
                  <i class="material-icons prefix">account_circle</i>
                  <asp:TextBox ID="txtEmail" CssClass ="validate" runat="server" placeholder="Email"></asp:TextBox>
                </li>

                <li class="input-field col s6">
                  <i class="material-icons prefix">lock</i>
                  <asp:TextBox ID="txtPassword" CssClass ="validate" runat="server" placeholder="Password"></asp:TextBox>
                </li>
                <li>
                    <asp:Button ID ="btnLogin" CssClass ="btn" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    <asp:Label ID ="lblError" runat ="server" Text ="error label" Visible="false"></asp:Label>
                </li>
              </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                         
<div class="table count-down">
            <div class="row count-down">
                <asp:Button ID="btnApply" runat="server" Text="Apply To Join Motiv8" CssClass="btn" OnClick="btnApply_Click" />
            </div>

			<div class="row count-down">
            <img src="icons/rwds-03.png">
			<h1 style="font-size:8vw;">$5,000</h1>
			</div>
			<div class="row count-down">
				<p style="font-size:2vw;">Welcome to MOTIV8: A web application that helps inner company motivation to continue to follow the companies values. Login to see what rewards you can earn and see what rewards you can give. </p>
			</div>
            
</div>

        
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
    

</asp:Content>