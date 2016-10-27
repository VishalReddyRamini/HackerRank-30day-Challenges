<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginTable.aspx.cs" Inherits="insertUpdateDelete.loginTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="Stylesheet" type="text/css" href="styles/Sheet2.css" />
</head>
<body>
    <form id="form1" runat="server">
        <fieldset>
            <legend>Enter Your Details Below</legend>
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="nameLbl" runat="server" Text="Name:"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="nameTxt" runat="server" ></asp:TextBox>
                </td>
                           </tr>
            <tr>
                <td>
                    <asp:Label ID="emailLbl" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="ageLbl" runat="server" Text="Age:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ageTxt" runat="server"></asp:TextBox>
                </td>


            </tr>
            <tr>
                <td>
                    <asp:Label ID="mobileLbl" runat="server" Text="MobileNo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="mobileTxt" runat="server"></asp:TextBox>
                </td>


            </tr>
            <tr><td>
                    <asp:Label ID="sexLbl" runat="server" Text="Sex:"></asp:Label>
                </td>
                <td><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                    </td>
            </tr>
            <tr >
                <td colspan="2">
                    <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" Height="26px" />
                </td>

                
            </tr>
        </table>
    
    </div>
            
            </fieldset>
        <fieldset>
            <legend>Update The Values!</legend>
            <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="ID:"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
                </td>
                           </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                </td>
                           </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Age:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>


            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="MobileNo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>


            </tr>
            <tr><td>
                    <asp:Label ID="Label5" runat="server" Text="Sex:"></asp:Label>
                </td>
                <td><asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                    </td>
            </tr>
            <tr >
                <td >
                    <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" />
                </td>
                  <td >
                    <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click"  />
                </td>

                
            </tr>
        </table>
    
    </div>
            
        </fieldset>
        <fieldset>
            <legend>Delete a Record!</legend>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:BoundField DataField="mobilenumber" HeaderText="mobilenumber" SortExpression="mobilenumber" />
                    <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="DeleteRecord" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=VISHAL\SQLEXPRESS;Initial Catalog=info;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [inform]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [inform] WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([mobilenumber] = @original_mobilenumber) OR ([mobilenumber] IS NULL AND @original_mobilenumber IS NULL)) AND (([sex] = @original_sex) OR ([sex] IS NULL AND @original_sex IS NULL))" InsertCommand="INSERT INTO [inform] ([name], [email], [age], [mobilenumber], [sex]) VALUES (@name, @email, @age, @mobilenumber, @sex)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [inform] SET [name] = @name, [email] = @email, [age] = @age, [mobilenumber] = @mobilenumber, [sex] = @sex WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([mobilenumber] = @original_mobilenumber) OR ([mobilenumber] IS NULL AND @original_mobilenumber IS NULL)) AND (([sex] = @original_sex) OR ([sex] IS NULL AND @original_sex IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_age" Type="Int32" />
                    <asp:Parameter Name="original_mobilenumber" Type="Int32" />
                    <asp:Parameter Name="original_sex" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="mobilenumber" Type="Int32" />
                    <asp:Parameter Name="sex" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="mobilenumber" Type="Int32" />
                    <asp:Parameter Name="sex" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_age" Type="Int32" />
                    <asp:Parameter Name="original_mobilenumber" Type="Int32" />
                    <asp:Parameter Name="original_sex" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </fieldset>
    </form>
</body>
</html>
