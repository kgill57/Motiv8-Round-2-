﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewRewards.aspx.cs" Inherits="ViewRewards" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
    
<asp:Panel ID ="masterPanel" runat ="server">
<div style ="position: relative; top: 60px;">

    <%-- Sidebar --%>
    <div style = "float: left; width: 15%;">
        <ul id="slide-out" class="side-nav fixed" style = "width:15%;">
                <li><div class="user-view">
                    <asp:Image ID ="profilePicture" Height ="120px" Width ="120px" CssClass ="circle user" runat ="server"/>
                    <asp:Label ID="lblUser" runat="server" Text="" CssClass ="user1"></asp:Label>
                    <h5 class="user1">Admin</h5>
                    <asp:Label ID="lblBalance" runat="server" CssClass ="user1"></asp:Label>
                </div></li>
                <li><a href ="/UserOptions.aspx">User Options</a></li>
                <li><a href="/ViewRewards.aspx">View Rewards</a></li>
                <li><a href ="/AddRewardProviders.aspx">View Reward Providers</a></li>
                <li><a href="AnalyticsPage.aspx">View Analytics</a></li>
                <li><a href="adminCalendar.aspx">Community Events</a></li>
                <li><a href="/Default.aspx">Logout</a></li>
        </ul>
    </div>

    <%-- Content --%>
    <div style ="float: right; width: 85%;">
        <div style = "margin-left:auto; margin-right:auto; width:85%;">
        <nav class="feednav" >
            <div class="nav-wrapper">
                <a class="brand-logo nav1 panel">Rewards</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down"> 
                    
    
                    <asp:Label ID = "lblResult" runat ="server"/>
                    <%-- Options Here --%>
                </ul>
            </div>
        </nav>
            <asp:Panel ID ="Panel1" runat="server"></asp:Panel>
       
        </div>
    </div>
</div>

</asp:Panel>
    <%--<div id="modal1" class="modal">
        <div class="modal-content">
            <i class="large material-icons">verified_user </i>
            <h4 class="redeemed">
              Reward Has Been Deleted</h4>
        </div>
    <div class="modal-footer">
      <a class=" modal-action modal-close waves-effect waves-green btn-flat">Exit</a>
    </div>
  </div>--%>




    
</asp:Content>
<%--<center>
    <h1 class="display-4">Reward Options</h1>
    <div class="jumbotron agent-1" style="width:78%; background-color:lightblue; opacity:0.88; border-radius:25px; padding-top:1px;">
        <div style="float:left;">
            <asp:Button ID="btnAddReward" CssClass="btn btn-primary" runat="server" Text="Add Reward" OnClick="btnAddReward_Click" CausesValidation="False" />
            <asp:Button ID="btnClear" CssClass="btn btn-secondary" runat="server" Text="Clear" OnClick="btnClear_Click" CausesValidation="False" />
            <asp:Button ID="RewardAutoFillID" CssClass="btn btn-secondary" runat="server" OnClick="RewardAutoFillID_Click" Text="AutoFill Reward" CausesValidation="false" />
        </div>
        
        <asp:Panel ID="rewardPanel" runat="server" Visible="False">
            <div style="width:50%;">
                <div class="form-group">
                    <asp:TextBox ID="txtRewardName" CssClass="form-control" placeholder="Reward Name" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator id="reqRewardName" ControlToValidate="txtRewardName" Text="(Required)" runat="server"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtRewardQuantity" CssClass="form-control" placeholder="Reward Quantity" runat="server" TextMode="Number"  ></asp:TextBox>
                    <asp:RequiredFieldValidator id="reqRewardQuantity" ControlToValidate="txtRewardQuantity" Text="(Required)" runat="server"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtRewardAmount" CssClass="form-control" placeholder="Reward Amount ($)" runat="server" TextMode="Number" ></asp:TextBox>
                    <asp:RequiredFieldValidator id="reqRewardAmount" ControlToValidate="txtRewardAmount" Text="(Required)" runat="server"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpRewardAmount" ControlToValidate="txtRewardAmount" Type="Currency" Operator="DatatypeCheck" Text="(Invalid Format)" runat="server"></asp:CompareValidator>
                </div>
                <div style="float:left;">
                    <asp:DropDownList ID="drpRewardProvider" runat="server" ></asp:DropDownList>
                    <asp:RequiredFieldValidator id="reqRewardProvider" ControlToValidate="drpRewardProvider" Text="(Required)" runat="server"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="Add" OnClick="btnAdd_Click" />
                </div>
            </div>
        </asp:Panel>
        <br />
        <br />
        
        
        <br />
        <br />
        <asp:TextBox ID="txtSearch" placeholder="Search" runat="server"  ></asp:TextBox>
        <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Search" OnClick="btnSearch_Click" CausesValidation="False" />

        <br />
        <br />
        <div id="rewardGrid">
            <asp:GridView ID="grdRewards" ValidationGroup="validNewReward" AutoGenerateColumns="False" runat="server"  DataKeyNames="RewardID" ShowHeaderWhenEmpty="True" AutoGenerateDeleteButton="True" OnRowCancelingEdit="grdRewards_RowCancelingEdit" OnRowDeleting="grdRewards_RowDeleting" OnRowEditing="grdRewards_RowEditing" OnRowUpdating="grdRewards_RowUpdating">
        <Columns>
            <asp:CommandField ShowEditButton="true" CausesValidation="true" ValidationGroup="validNewReward"/>
            <asp:TemplateField HeaderText="Reward Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtgvRewardName" runat="server" Text='<%# Eval("RewardName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqgvRewardName" ControlToValidate="txtgvRewardName" Text="(Required)" Display="Dynamic" Runat="server" Font-Bold="True" ForeColor="Red" ValidationGroup="validNewReward"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblgvRewardName" runat="server" Text='<%# Eval("RewardName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Reward Quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="txtgvRewardQuantity" runat="server" Text='<%# Eval("RewardQuantity") %>' TextMode="SingleLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqgvRewardQuantity" ControlToValidate="txtgvRewardQuantity" Text="(Required)" Display="Dynamic" Runat="server" Font-Bold="True" ForeColor="Red" ValidationGroup="validNewReward"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblgvRewardQuantity" runat="server" Text='<%# Eval("RewardQuantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Reward Value">
                <EditItemTemplate>
                    <asp:TextBox ID="txtgvRewardAmount" runat="server" Text='<%# "$" + Eval("RewardAmount", "{0:0.00}") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqgvRewardAmount" ControlToValidate="txtgvRewardAmount" Text="(Required)" Display="Dynamic" Runat="server" Font-Bold="True" ForeColor="Red" ValidationGroup="validNewReward"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblgvRewardAmount" runat="server" Text='<%# "$" + Eval("RewardAmount", "{0:0.00}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Provider ID">
                <EditItemTemplate>
                    <asp:Label ID="txtgvProviderID" ReadOnly="true" runat="server" Text='<%# Eval("ProviderID") %>' ></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblgvProviderID" runat="server" Text='<%# Eval("ProviderID") %>'></asp:Label>
                </ItemTemplate>                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date Added">                   
                <ItemTemplate>
                    <asp:Label ID="lblgvDateAdded" runat="server" Text='<%# Eval("DateAdded") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="lblEmpty" runat="server" Text="No Records Found"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
        </div>
    </div>
</center>
    
</asp:Content>--%>