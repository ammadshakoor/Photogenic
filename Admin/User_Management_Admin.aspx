<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="User_Management_Admin.aspx.cs" Inherits="Admin_User_Management_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUserDisplayName" Runat="Server">
    <h4>Ammad Shakoor</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderUserDisplayRole" Runat="Server">
    <p>Admin </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderSection" Runat="Server">
    <h5 class="mt-2">User Management</h5><a class="anchor" name="forms"></a>
            <div class="row grid-responsive">
				<div class="column ">
                    <!-- Head Card -->
					<div class="card">
						<div class="card-title">
							<h3>Add New User</h3>
						</div>
						<div class="card-block">

                    <%--   Adding A Category to database--%>
                            <fieldset>
                                <label for="nameField">Generate New User & Role:</label>
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <asp:Button  cssClass="btn btn-secondary" ID="BtnAdminUser" runat="server" OnClick="AdminShowDiv" Text="Admin" />
                                    <asp:Button  cssClass="btn btn-secondary" ID="BtnBlockUser" runat="server" OnClick="BlockUserShowDiv" Text="Block-User" />
                                </div>
                            </fieldset>
						</div>
					</div>
                    
                    <!-- Admin Card Block -->
                    <div class="card" runat="server" id="card_admin" visible="false">
						<div class="card-title">
							<h3>Add New Admin or Role</h3>
						</div>
						<div class="card-block">
                            <!-- New regsitration form of admin -->
                            <p>Register new admin or <br /> Make new or update role of Admin. </p>
								<fieldset>
                                    <asp:Label ID="LblFirstName" runat="server" Text="First Name"></asp:Label>
                                    <asp:TextBox ID="TextFirstNameAdmin" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="LblLastName" runat="server" Text="Last Name"></asp:Label>
                                    <asp:TextBox ID="TextLastNameAdmin" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="LblUsername" runat="server" Text="Username"></asp:Label>
                                    <asp:TextBox ID="TextUsernameAdmin" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="LblPassword" runat="server" Text="Password "></asp:Label>
                                    <asp:TextBox ID="TextPasswordAdmin" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox ID="TextEmailAdmin" runat="server" TextMode="Email"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="LblDOB" runat="server" Text="Date Of Birth "></asp:Label>
                                    <asp:TextBox ID="TextDOBAdmin" runat="server" TextMode="Date"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="LblAccount" runat="server" Text="Account Type "></asp:Label>
                                    <asp:DropDownList ID="DropDownListAccountType" runat="server">
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>Photographer</asp:ListItem>
                                        <asp:ListItem>Customer</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <asp:Label ID="LblAdminRole" runat="server" Text="Admin Role"></asp:Label>
                                    <asp:TextBox ID="TextRole" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="LblPhone" runat="server" Text="Phone # "></asp:Label>
                                    <asp:TextBox ID="TextPhoneAdmin" runat="server" TextMode="Number"></asp:TextBox>
                                    <br />

                                    <asp:Button cssClass="button button-outline" ID="BtnNewAdminProcced" runat="server" Text="Create New Admin" OnClick="NewAdminCreate" />
								</fieldset>
						</div>
                        <hr />
                        <div class="card-title">
                            <h3>Grid View of Admins Register!</h3>
                        </div>
                        <div class="card-block">
                            <!-- GridView attached here from admin table -->
                            <asp:GridView ID="GridViewAdmin" runat="server"></asp:GridView>
                        </div>
					</div>

                    <!-- User-Block Card Block -->
                    <div class="card" runat="server" id="card_blockUser" visible="false">
						<div class="card-title">
							<h3>Block User Status</h3>
						</div>
						<div class="card-block">
                            <p> This section block is under maintaince...</p>
								<fieldset>
                                    <asp:Label ID="LblReason" runat="server" Text="Reason to Block"></asp:Label>
                                    <asp:TextBox ID="TextReasonUser" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="LblStatus" runat="server" Text="Status"></asp:Label>
                                    <asp:TextBox ID="TextStatusUser" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Button cssClass="button button-outline" ID="BtnBlockUserStatus" runat="server" Text="Block User" OnClick="BlockUserStatus" />
								</fieldset>
						</div>
					</div>
				</div>
			</div>

           
</asp:Content>

