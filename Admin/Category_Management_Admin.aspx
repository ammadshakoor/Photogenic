<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Category_Management_Admin.aspx.cs" Inherits="Admin_Category_Management_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUserDisplayName" Runat="Server">
    <h4>Ammad Shakoor</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderUserDisplayRole" Runat="Server">
    <p>Admin </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderSection" Runat="Server">
    <!--Forms-->
			<h5 class="mt-2">Category Management</h5><a class="anchor" name="forms"></a>
			<div class="row grid-responsive">
				<div class="column ">
					<div class="card">
						<div class="card-title">
							<h3>Add New Category</h3>
						</div>
						<div class="card-block">
                            <fieldset>
                                <label for="nameField">Category</label>
                                <asp:TextBox ID="Category_Input" runat="server" placeholder="Enter A Category Name"></asp:TextBox>
                                <asp:Label ID="label_category" runat="server" Text="" ForeColor="Red"></asp:Label><br />
                                <asp:Button cssClass="button button-outline" ID="Category_Submit" runat="server" Text="Submit Category" OnClick="Category_Submit_Click" />
                            </fieldset>
						</div>
					</div>
                    <div class="card">
                        <div class="card-title">
                            <h3>View All Category</h3>
                        </div>
                        <div class="card-block">
                            <p>List of all categories here!</p>
                            <!-- Attach tabel  category with gridview and also add the feature of update and delete in gridview -->
                            <asp:GridView ID="GridViewCategoryAdmin" runat="server"></asp:GridView>
                        </div>
                    </div>
				</div>
			</div>
			
</asp:Content>

