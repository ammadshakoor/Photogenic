<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!-- Title of Website -->
    <title>Photgenic.pk | Powerful Platform for Photographers</title>

    <link rel="stylesheet" href="css/Login.css" />
    <script src="js/Login.js"></script>

    <!-- Bootstrap Links -->
    <script src="jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />

</head>
<body>

    <!-- Bootstrap Login and Sign up -->
    <div class="container">
        <div class="row vertical-offset-100">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">Login to Photogenic.pk</h2>
                    </div>
                    <div class="panel-body">
                        <form id="form2" accept-charset="UTF-8" role="form" runat="server">
                            <fieldset>
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Usernamme"></asp:Label>
                                    <asp:TextBox ID="TextBoxUser" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox ID="TextBoxPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="btn btn-lg btn-success btn-block" />
                            </fieldset>
                            <fieldset>
                                <br />
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="Forget Password"></asp:Label>
                                    <asp:Button ID="BtnForget" runat="server" Text="Click Me!" CssClass="btn btn-link" />
                                </div>
                                <div class="form-group">
                                    <a href="#" style="text-align: center;">Sign up Now!</a>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>