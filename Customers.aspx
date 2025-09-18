<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="WebAppSample.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" />
     <script>
         function validate() {
             let name = document.getElementById("txtName").value;
             let address = document.getElementById("txtAdd").value;
             let accountSelected = document.getElementById("ddlAccounts").SelectedIndex;

             if (name.trim().length ==0) {
                 document.getElementById("lblMsg").innerHTML = "Enter Your Name Please";
                 document.getElementById("lblMsg").style = "color:red";
                 return false
             }
             else if (address.trim().length == 0) {
                 document.getElementById("lblMsg").innerHTML = "Enter Your Address Please";
                 document.getElementById("lblMsg").style = "color:red";
                 return false;
             }
            /* else if (accountSelected.length == 0) {
                 document.getElementById("lblMsg").innerHTML = "Please Choose Your Account Type";
                 document.getElementById("lblMsg").style = "color:red";
                 return false;
             }*/
         }
     </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="width:100%; border:solid thin black; padding:20px;">
                <center>
                    <h1>Customer  Managemnet</h1>
                </center>
            </div>
            <hr />

            <div>
                <div style="width:40%; border:solid thin black; padding:20px;  display:inline-block" >
                    <div >
                        Account No: 
                        <asp:Label ID="lblAccNum" runat="server" Text="Label"></asp:Label>
                         
                    </div><br />
                    <div>Name : 
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ></asp:TextBox>
                         
                    </div><br />

                    <div>Address : 
                        <asp:TextBox ID="txtAdd" runat="server" CssClass="form-control"></asp:TextBox>
                         
                    </div><br />
                    <div>Preferred Account : 
                        <asp:DropDownList ID="ddlAccounts" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="264px"></asp:DropDownList>
                               
                               <br />
                    </div><br />

                    <div>Activate Account : 
                        <asp:CheckBox ID="cbStatus" runat="server" CssClass="form-control" OnCheckedChanged="CheckBox1_CheckedChanged" />
                        <br />
                    </div><br />
                    <div>

                    <div>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel"  CssClass="btn btn-warning form-control" style="padding:10px; background-color:red; margin-right:50px" Width="146px" OnClick="btnCancel_Click" />
                        <asp:Button ID="btnSave" runat="server" Text="Save"  OnClientClick="return validate()" cssClass="btn btn-primary form-control"  style="background-color:green; margin-left:20px; padding:10px" Width="135px" OnClick="Button3_Click" />
                        <br />
                    </div>
 
                    </div>
                      <div>
                        <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label>
                    </div><br />

                </div>
                <div style="width:55%; border:solid thin black; margin-top:20px; padding:10px; display:inline-block">
                    <div>Enter Customer Name: 
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>

                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="Button2_Click" />
                        <p> <asp:Label ID="lblSearchMsg" runat="server" Text=" "></asp:Label></p>
                    </div>
                    <br />
                    <div>
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnEdit" runat="server" CommandArgument='<%#Eval("Accno")%>' CommandName="EditRow" OnCommand="btnEdit_Click">Edit</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>

                </div>
            </div>
            <div>
                <p style="text-align:center; padding:20px; margin-top:10px">Copy Rights &copy; All Rights are Reserved to Tech Novice Solutions, Mysore.</p>
            </div>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>