﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rpSettings.aspx.cs" Inherits="rpSettings"  EnableEventValidation="false" %>

<asp:Content ID="ContentHeader" ContentPlaceHolderID="ContentPlaceHolderHeader" Runat="Server">
                        
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
    <head>
        <title> MOTIV8 | Settings
        </title>
          <!--Import Google fonts-->
          <link href="https://fonts.googleapis.com/css?family=Oxygen:700" rel="stylesheet">
          <!--Import Google Icon Font-->
          <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
          <!--Import materialize.css-->
          <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>

          <!--Let browser know website is optimized for mobile-->
          <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body>
        <!-- side nav bar for profile-->
   
        <div style = "float: left; width: 15%;">
         <ul id="slide-out" class="side-nav fixed" style = "width:15%;">
            <li><div class="user-view">
                <asp:Image ID ="profilePicture" Height ="120px" Width ="120px" CssClass ="circle user" runat ="server"/>
                <h5><asp:Label ID="lblUser" runat="server" Text="" CssClass ="user1"></asp:Label></h5>
                <asp:Label ID="lblBalance" runat="server" ></asp:Label>
            </div></li>
          <li> <a href="rpRewards.aspx">Rewards</a></li>
          <li> <a href="rpEvents.aspx"> Calendar</a></li>
          <li> <a href="rpSettings.aspx">Settings</a></li>
          <li><a class="waves-effect" href="Default.aspx">Logout</a></li>
          <li><a><i class="material-icons nav1 modal-trigger" data-target="modal4"> help</i></a>
          </ul>
            </div>
          <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>

        <!-- End Side Nav-->

        <!--START FORM FOR SETTINGS for General -->
        <div class="container settings" runat="server">
          <div class="row">
          <div class="col s12">
              <h4 class="settings"> General Settings</h4>
            </div>
          </div> <!--End Header Row -->
        <!-- Upload Photo-->
        <h5>Update Profile Picture </h5>
          <div class="file-field input-field">
              <table >
                    <tr>
                        <td style="width: 160px">Upload Profile Picture:</td>
                        <td>   
                            <asp:FileUpload ID ="UploadPicture" runat ="server" />
                            <asp:Button ID ="btnUpload" CssClass="btn btn-primary" runat ="server" Text ="Upload" OnClick="btnUpload_Click" />
                        </td>
                    </tr>
                </table>
                <%--<asp:FileUpload ID ="UploadPicture" runat ="server" />
                <asp:Button ID="btnUploadPhoto" runat="server" Text="Upload Photo" CssClass="btn" OnClick="btnUploadPhoto_Click" />
                <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="btn" OnClick="btnUpload_Click" />--%>
              <div class="file-path-wrapper">
                  <asp:TextBox ID="txtUpdateProfilePic" runat="server" placeholder="Update Profile Picture" CssClass="file-path validate"></asp:TextBox>
              </div>
            </div>
        <!-- End upload photo-->
        <h5> Update Password</h5>
                  <div class="row formsetting" runat="server">
                     
                 
                        <div class="row">
                          <div class="input-field col s12">
                              <asp:TextBox ID="txtCurrentPass" runat="server" placeholder="Current Password" CssClass="validate"></asp:TextBox>
                          </div>
                        </div>

                        <div class="row">
                          <div class="input-field col s12">
                              <asp:TextBox ID="txtNewPass" runat="server" placeholder="New Password" CssClass="validate"></asp:TextBox>
                          </div>
                        </div>

                        <div class="row" runat="server">
                          <div class="input-field col s12" runat="server">
                            <asp:TextBox ID="txtConfirmNewPass" runat="server" placeholder="Confirm New Password" CssClass="validate"></asp:TextBox>
                              <asp:Button ID="btnChangePass" runat="server" Text="Change Password" CssClass="btn" OnClick="btnChangePass_Click" />
                          </div>
                        </div>

                        <div class="switch">
                              <h5>Send Email Notifications >
                                <label> Off
                                    <asp:CheckBox ID="chkNotifications" runat="server" CssClass="lever" />
                        On
                      </label>
                    </div>
                          <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                 
                      
                </div>





        </div>
         <!--end setting container -->
    </body>
</html>
</asp:Content>
