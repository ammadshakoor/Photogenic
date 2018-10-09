<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="bucket.aspx.cs" Inherits="Photographer_bucket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headLinkPlace" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSection" Runat="Server">
         <!-- SECTION HEADLINE -->
	<div class="section-headline-wrap">
		<div class="section-headline">
			<h2><asp:Label ID="LblDisplayPhotographerRole" runat="server" Text="Photographer"></asp:Label></h2>
        
			<p>Home<span class="separator">/</span><span class="current-section">Photographher's Profile</span></p>
		</div>
	</div>
	<!-- /SECTION HEADLINE -->

	<!-- AUTHOR PROFILE BANNER -->
	<div class="author-profile-banner"></div>
	<!-- /AUTHOR PROFILE BANNER -->

	<!-- AUTHOR PROFILE META -->
	<div class="author-profile-meta-wrap">
<%--		<div class="author-profile-meta">
			<!-- AUTHOR PROFILE INFO -->
			<div class="author-profile-info">
				<!-- AUTHOR PROFILE INFO ITEM -->
				<div class="author-profile-info-item">
					<p class="text-header">Member Since:</p>
					<p>December 26th, 2013</p>
				</div>
				<!-- /AUTHOR PROFILE INFO ITEM -->

				<!-- AUTHOR PROFILE INFO ITEM -->
				<div class="author-profile-info-item">
					<p class="text-header">Total Sales:</p>
					<p>820</p>
				</div>
				<!-- /AUTHOR PROFILE INFO ITEM -->

				<!-- AUTHOR PROFILE INFO ITEM -->
				<div class="author-profile-info-item">
					<p class="text-header">Freelance Work:</p>
					<p>Available</p>
				</div>
				<!-- /AUTHOR PROFILE INFO ITEM -->

				<!-- AUTHOR PROFILE INFO ITEM -->
				<div class="author-profile-info-item">
					<p class="text-header">Website:</p>
					<p><a href="http://www.odindesign-themes.com/" class="primary">www.odindesign-themes.com</a></p>
				</div>
				<!-- /AUTHOR PROFILE INFO ITEM -->
			</div>
			<!-- /AUTHOR PROFILE INFO -->
		</div>--%>
	</div>
	<!-- /AUTHOR PROFILE META -->

	<!-- SECTION -->
	<div class="section-wrap">
		<div class="section overflowable">
			<!-- SIDEBAR -->
			<div class="sidebar left author-profile">
				<!-- SIDEBAR ITEM -->
				<div class="sidebar-item author-bio">
					<!-- USER AVATAR -->
					<a href="user-profile.htm" class="user-avatar-wrap medium">
						<figure class="user-avatar medium">
                            <!-- Use aspx image tag here to fetch image from database-->
                            <asp:Image ID="ImageDisplayProfile" runat="server" ImageUrl="~/images/avatars/avatar_09.jpg" />
						</figure>
					</a>
					<!-- /USER AVATAR -->
					<p class="text-header"><asp:Label ID="LblDisplayPhotographerUsername" runat="server" Text="Photographer Name"></asp:Label></p>
					<!-- SHARE LINKS -->
                    <ul class="share-links">
						<li>
                            <div class="icon-social-facebook"><a href="#"></a></div>
                        </li>
                        <li>
                            <div class="icon-social-twitter"><a href="#"></a></div>
                        </li>
                        <li>
                            <div class="icon-social-instagram"><a href="#"></a></div>
                        </li>
					</ul>
					<hr class="line-separator" />
                    <asp:HyperLink ID="HyperLinkFollowers" runat="server" NavigateUrl="#" CssClass="button mid dark spaced">Add to <span class="primary">Followers</span></asp:HyperLink>

                    <%--					<a href="#" class="button mid dark-light">Send a Private Message</a>--%>
                    <asp:HyperLink ID="HyperLinkPrivateMessage" runat="server" NavigateUrl="#" CssClass="button mid dark-light">Send a Private Message</asp:HyperLink>
				</div>
				<!-- /SIDEBAR ITEM -->

				<!-- DROPDOWN -->
				<ul class="dropdown hover-effect">
					<li class="dropdown-item">
                        <asp:HyperLink ID="HyperLinkProfilePage" runat="server" NavigateUrl="~/Photographer/profile.aspx">Profile Page</asp:HyperLink>
					</li>
					<li class="dropdown-item">
                        <asp:HyperLink ID="HyperLinkDashboard" runat="server" NavigateUrl="~/Photographer/dashboard.aspx">Dashboard</asp:HyperLink>
					</li>
					<li class="dropdown-item active">
                        <asp:HyperLink ID="HyperLinkBuyBucket" runat="server" NavigateUrl="~/Photographer/bucket.aspx">Sell Bucket</asp:HyperLink>
					</li>
					<li class="dropdown-item">
                        <asp:HyperLink ID="HyperLinkPayments" runat="server" NavigateUrl="#">Payments</asp:HyperLink>
					</li>
					<li class="dropdown-item">
                        <asp:HyperLink ID="HyperLinkComplain" runat="server" NavigateUrl="#">Complain</asp:HyperLink>
					</li>
					<li class="dropdown-item">
                        <asp:HyperLink ID="HyperLinkDnowloads" runat="server" NavigateUrl="#">Dnowloads</asp:HyperLink>
					</li>
					<li class="dropdown-item">
                        <asp:HyperLink ID="HyperLinkShowcase" runat="server" NavigateUrl="#">Upload Showcase</asp:HyperLink>
					</li>
				</ul>
				<!-- /DROPDOWN -->

				<!-- SIDEBAR ITEM -->
				<div class="sidebar-item author-reputation full">
					<h4>Photographer's Reputation</h4>
					<hr class="line-separator" />
					<!-- PIE CHART -->
					<div class="pie-chart pie-chart1">
						<p class="text-header percent">50<span>%</span></p>
						<p class="text-header percent-info">Recommended</p>
					</div>
					<!-- /PIE CHART -->
                        <asp:HyperLink ID="HyperLinkReviews" runat="server" NavigateUrl="#" CssClass="button mid dark spaced">Read all Reviews</asp:HyperLink>
				</div>
				<!-- /SIDEBAR ITEM -->
			</div>
			<!-- /SIDEBAR -->

			<!-- CONTENT -->
            <div class="content right">
                <!-- HEADLINE -->
				<div class="headline simple primary">
					<h4>Bucket Management</h4>
				</div>
				<!-- /HEADLINE -->

                
                <!-- HEADLINE -->
				<div class="headline simple primary">
                    <asp:Button ID="BtnPhotoBucket" runat="server" Text="Photo Bucket" CssClass="button primary" OnClick="BtnPhotoBucket_Click"/>
                    <asp:Button ID="BtnVideoBucket" runat="server" Text="Video Bucket" CssClass="button primary" OnClick="BtnVideoBucket_Click"/>
                    <asp:Button ID="BtnGadgetBucket" runat="server" Text="Gadget Bucket" CssClass="button primary" OnClick="BtnGadgetBucket_Click"/>
				</div>
				<!-- /HEADLINE -->
                <div id="showPB" runat="server" visible="true">
 				<!-- COMMENTS -->
				<div class="comment-list">
					<!-- COMMENT -->
					<div class="comment-wrap">
						<div class="comment">
                            <h4>Create Photo Bucket</h4>
                            <br />
                            <asp:Label ID="LblDisplayUsernameFromSessionforPB" runat="server" Text="Username Here"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="LblPBName" runat="server" Text="Title"></asp:Label>
                            <asp:TextBox ID="TxtPBName" runat="server"></asp:TextBox>
                            
                            <asp:Label ID="LblPBDescription" runat="server" Text="Description"></asp:Label>
                            <asp:TextBox ID="TxtPBDescription" runat="server"></asp:TextBox>
                            
                            <asp:Label ID="LblPBThumbNail" runat="server" Text="Upload Thumbnail"><span>(JPEG or PNG 100x100px)</span></asp:Label>
                            <asp:FileUpload ID="FileUploadPBThumbnail" runat="server" CssClass="button primary"/>
                            
                            <asp:Label ID="LblPBZip" runat="server" Text="Upload Zip"><span>(ZIP - All files)</span></asp:Label>
                            <asp:FileUpload ID="FileUploadPBZip" runat="server" CssClass="button primary"/>
                            
                            <asp:Label ID="LblPBDate" runat="server" Text="Date"></asp:Label>
                            <asp:TextBox ID="TxtPBDate" runat="server" TextMode="Date"></asp:TextBox>

                            <asp:Label ID="LblPDPrice" runat="server" Text="Price"></asp:Label>
                            <asp:TextBox ID="TxtPBPrice" runat="server" TextMode="Number"></asp:TextBox>

                            <asp:Label ID="LblPBCategory" runat="server" Text="Category"></asp:Label>
                            <asp:DropDownList ID="DropDownListCatPBDisplay" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
                            
						    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OPGConnectionString1 %>" SelectCommand="SELECT [Name] FROM [Category]"></asp:SqlDataSource>
                            
                            <asp:Label ID="lblsubmitstatus" runat="server" Text=""></asp:Label>
						</div>
					</div>
					<!-- /COMMENT -->

					<!-- LINE SEPARATOR -->
					<hr class="line-separator" />
					<!-- /LINE <asp:DropDownList runat="server"></asp:DropDownList>SEPARATOR -->

					<div class="clearfix"></div>


					<!-- COMMENT REPLY -->
					<div class="comment-wrap comment-reply">

						<!-- COMMENT REPLY FORM -->
						<div class="comment-reply-form">
                            <asp:Button ID="BtnSubmitPhotoBucketForReview" runat="server" Text="Submit for Review" CssClass="button primary" OnClick="BtnSubmitPhotoBucketForReview_Click"/>
						</div>
						<!-- /COMMENT REPLY FORM -->
					</div>
					<!-- /COMMENT REPLY -->
				</div>
				<!-- /COMMENTS -->

                </div>

                
                <div id="showVB" runat="server" visible="false">
 				<!-- COMMENTS -->
				<div class="comment-list">
					<!-- COMMENT -->
					<div class="comment-wrap">
						<div class="comment">
                            <h4>Create Video Bucket</h4>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Username Here"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            
                            <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            
                            <asp:Label ID="Label4" runat="server" Text="Upload Thumbnail"><span>(JPEG or PNG 100x100px)</span></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="button primary"/>
                            
                            <asp:Label ID="Label5" runat="server" Text="Upload Zip"><span>(ZIP - All files)</span></asp:Label>
                            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="button primary"/>
                            
                            <asp:Label ID="Label6" runat="server" Text="Date"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                            
                            <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>

                            <asp:Label ID="Label8" runat="server" Text="Category"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
                            
						    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OPGConnectionString1 %>" SelectCommand="SELECT [Name] FROM [Category]"></asp:SqlDataSource>
                            
						</div>
					</div>
					<!-- /COMMENT -->

					<!-- LINE SEPARATOR -->
					<hr class="line-separator" />
					<!-- /LINE <asp:DropDownList runat="server"></asp:DropDownList>SEPARATOR -->

					<div class="clearfix"></div>


					<!-- COMMENT REPLY -->
					<div class="comment-wrap comment-reply">

						<!-- COMMENT REPLY FORM -->
						<div class="comment-reply-form">
                            <asp:Button ID="Button1" runat="server" Text="Submit for Review" CssClass="button primary"/>
						</div>
						<!-- /COMMENT REPLY FORM -->
					</div>
					<!-- /COMMENT REPLY -->
				</div>
				<!-- /COMMENTS -->

                </div>

                
                <div id="showGB" runat="server" visible="false">
 				<!-- COMMENTS -->
				<div class="comment-list">
					<!-- COMMENT -->
					<div class="comment-wrap">
						<div class="comment">
                            <h4>Create Gadget Bucket</h4>
                            <br />
                            <asp:Label ID="Label9" runat="server" Text="Username Here"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label10" runat="server" Text="Title"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            
                            <asp:Label ID="Label11" runat="server" Text="Description"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            
                            <asp:Label ID="Label12" runat="server" Text="Upload Thumbnail"><span>(JPEG or PNG 100x100px)</span></asp:Label>
                            <asp:FileUpload ID="FileUpload3" runat="server" CssClass="button primary"/>
                            
                            <asp:Label ID="Label13" runat="server" Text="Upload Zip"><span>(ZIP - All files)</span></asp:Label>
                            <asp:FileUpload ID="FileUpload4" runat="server" CssClass="button primary"/>
                            
                            <asp:Label ID="Label14" runat="server" Text="Date"></asp:Label>
                            <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
                            
                            <asp:Label ID="Label15" runat="server" Text="Price"></asp:Label>
                            <asp:TextBox ID="TextBox8" runat="server" TextMode="Number"></asp:TextBox>

                            <asp:Label ID="Label16" runat="server" Text="Category"></asp:Label>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
                            
						    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OPGConnectionString1 %>" SelectCommand="SELECT [Name] FROM [Category]"></asp:SqlDataSource>
                            
						</div>
					</div>
					<!-- /COMMENT -->

					<!-- LINE SEPARATOR -->
					<hr class="line-separator" />
					<!-- /LINE <asp:DropDownList runat="server"></asp:DropDownList>SEPARATOR -->

					<div class="clearfix"></div>


					<!-- COMMENT REPLY -->
					<div class="comment-wrap comment-reply">

						<!-- COMMENT REPLY FORM -->
						<div class="comment-reply-form">
                            <asp:Button ID="Button2" runat="server" Text="Submit for Review" CssClass="button primary"/>
						</div>
						<!-- /COMMENT REPLY FORM -->
					</div>
					<!-- /COMMENT REPLY -->
				</div>
				<!-- /COMMENTS -->

                </div>
             </div>
			<!-- CONTENT -->

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- /SECTION -->
</asp:Content>

