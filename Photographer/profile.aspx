<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="Photographer_profile" %>

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
					<li class="dropdown-item active">
                        <asp:HyperLink ID="HyperLinkProfilePage" runat="server" NavigateUrl="~/Photographer/profile.aspx">Profile Page</asp:HyperLink>
					</li>
					<li class="dropdown-item">
                        <asp:HyperLink ID="HyperLinkDashboard" runat="server" NavigateUrl="~/Photographer/dashboard.aspx">Dashboard</asp:HyperLink>
					</li>
					<li class="dropdown-item">
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
					<h4>Edit Profile & Info</h4>
				</div>
				<!-- /HEADLINE -->

				<!-- COMMENTS -->
				<div class="comment-list">
					<!-- COMMENT -->
					<div class="comment-wrap">
						<!-- USER AVATAR -->
							<figure class="user-avatar medium">
                                <asp:Image ID="ImagePhotographerProfile" runat="server" ImageUrl="~/images/avatars/avatar_02.jpg"/>
							</figure>
                        <!-- fetch user profile from database..  -->
						<!-- /USER AVATAR -->
						<div class="comment">
                            <asp:Label ID="LblDisplayUsernameFromSession" runat="server" Text="Username Here"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="LblWork" runat="server" Text="Work"></asp:Label>
                            <asp:TextBox ID="TxtWork" runat="server"></asp:TextBox>
                            
                            <asp:Label ID="LblExperience" runat="server" Text="Experience"></asp:Label>
                            <asp:TextBox ID="TxtExperience" runat="server"></asp:TextBox>
                            
                            <asp:Label ID="LblPrice" runat="server" Text="Price Per Hour"></asp:Label>
                            <asp:TextBox ID="TxtPricePerHour" runat="server" TextMode="Number"></asp:TextBox>
                            
                            <asp:Label ID="LblPhotoType" runat="server" Text="Photography Type"></asp:Label>
                            <asp:DropDownList ID="DropDownListPhotographyType" runat="server">
                                <asp:ListItem>Nature</asp:ListItem>
                                <asp:ListItem>Landscape</asp:ListItem>
                                <asp:ListItem>Protrait</asp:ListItem>
                                <asp:ListItem>Wlid Life</asp:ListItem>
                                <asp:ListItem>Wedding &amp; Events</asp:ListItem>
                                <asp:ListItem>Birthday</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
						</div>
					</div>
					<!-- /COMMENT -->

					<!-- LINE SEPARATOR -->
					<hr class="line-separator" />
					<!-- /LINE SEPARATOR -->

					<div class="clearfix"></div>


					<!-- COMMENT REPLY -->
					<div class="comment-wrap comment-reply">

						<!-- COMMENT REPLY FORM -->
						<div class="comment-reply-form">
                            <asp:Button ID="BtnSubmitProfileInfo" runat="server" Text="Submit" CssClass="button primary"/>
						</div>
						<!-- /COMMENT REPLY FORM -->
					</div>
					<!-- /COMMENT REPLY -->
				</div>
				<!-- /COMMENTS -->
             </div>
			<!-- CONTENT -->

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- /SECTION -->
</asp:Content>

