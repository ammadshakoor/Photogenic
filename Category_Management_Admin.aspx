<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Category_Management_Admin.aspx.cs" Inherits="Category_Management_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUserDisplayName" Runat="Server">
    <h4>Ammad Shakoor</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderUserDisplayRole" Runat="Server">
    <p>Admin</p>
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

                    <%--   Adding A Category to database--%>
                            <fieldset>
                                <label for="nameField">Category</label>
                                <asp:TextBox ID="Category_Input" runat="server" placeholder="Enter A Category Name"></asp:TextBox>
                                <asp:Label ID="label_category" runat="server" Text="" ForeColor="Red"></asp:Label><br />
                                <asp:Button class="button button-outline" ID="Category_Submit" runat="server" Text="Add Category" OnClick="Category_Submit_Click" />
                            </fieldset>
						</div>
					</div>
                    <div class="card">
                        <div class="card-title">
                            <h3>View All Category</h3>
                        </div>
                        <div class="card-block">
                            <asp:GridView ID="GridViewCategory" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryId" DataSourceID="SqlDataSourcePhotogenic">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" InsertVisible="False" ReadOnly="True" SortExpression="CategoryId" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourcePhotogenic" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CategoryId] = @original_CategoryId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))" InsertCommand="INSERT INTO [Category] ([Name]) VALUES (@Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [Name] = @Name WHERE [CategoryId] = @original_CategoryId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_CategoryId" Type="Int32" />
                                    <asp:Parameter Name="original_Name" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="original_CategoryId" Type="Int32" />
                                    <asp:Parameter Name="original_Name" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
				</div>
			</div>
			
	
</asp:Content>

