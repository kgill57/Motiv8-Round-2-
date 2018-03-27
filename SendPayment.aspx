<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SendPayment.aspx.cs" Inherits="SendPayment" %>

<asp:Content ID="ContentHeader" ContentPlaceHolderID="ContentPlaceHolderHeader" Runat="Server">
                        
    

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <html>
       <head>
           <title> MOTIV8 | Send Payment
            </title>
              <!--Import Google Icon Font-->
              <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
              <!--Import materialize.css-->
              <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>

              <!--Let browser know website is optimized for mobile-->
              <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  

          <!--modal style-->
              <style type="text/css">
                .modal {
                      max-height: 90%;
                    }

                    .modal-form-row {
                      margin-bottom: 0px;
                    }
              </style>
       </head>
       <body>
           <div class="table count-down">
               <div class="row count-down">
                   <asp:GridView ID="ShoppingCart" runat="server" >
                       <Columns>
                           <asp:TemplateField HeaderText="Provider Name">
                               <ItemTemplate>
                                   <asp:Label ID="lblProviderName" runat="server" Text='<%# Eval("ProviderName") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Total">
                               <ItemTemplate>
                                   <asp:Label ID="lblTotal" runat="server" Text='<%# Eval("Total") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                       </Columns>

                   </asp:GridView>
               </div>
               
           </div>
       </body>
   </html>
</asp:Content>



