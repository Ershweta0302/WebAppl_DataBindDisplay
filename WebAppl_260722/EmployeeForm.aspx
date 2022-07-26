<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeForm.aspx.cs" Inherits="WebAppl_260722.EmployeeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h2 style="color:white; background-color:black;">Employee Form</h2>
                <hr />
            <table style="background-color:#00ffff; height:450px; width:550px">
                <tr>
                    <th>Name</th>
                    <th><asp:TextBox ID="textname" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th>Gender</th>
                    <th><asp:TextBox ID="Textgender" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th>Email</th>
                    <th><asp:TextBox ID="Textemail" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th>Phone</th>
                    <th><asp:TextBox ID="Textphone" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th>Contery</th>
                    <th><asp:TextBox ID="Textcontery" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th>Salary</th>
                    <th><asp:TextBox ID="Textsalary" runat="server" Width="300px"></asp:TextBox></th>
                </tr>
                <tr>
                    <th></th>
                    <th><asp:Button ID="btnsubmit" runat="server" Width="100px" onclick="btnsubmit_Click" Text="Submit" Backcolor="black" ForeColor="White"/></th>
                </tr>
                <tr>
                    <th></th>
                    <th><asp:GridView ID="grd" runat="server"></asp:GridView></th>
                </tr>
            </table>
            <hr />
            </center>
        </div>
    </form>
</body>
</html>
