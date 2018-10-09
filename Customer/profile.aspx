<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="Customer_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headLinkPlace" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSection" Runat="Server">
    <!-- SECTION HEADLINE -->
	<div class="section-headline-wrap">
		<div class="section-headline">
			<h2><asp:Label ID="LblDisplayCustomerRole" runat="server" Text="Customer"></asp:Label></h2>
        
			<p>Home<span class="separator">/</span><span class="current-section">Customer's Profile</span></p>
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
					<p class="text-header"><asp:Label ID="LblDisplayCustomerUsername" runat="server" Text="Customer Name"></asp:Label></p>
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
					<%--<div class="share-links">
							<div class="icon-social-facebook"><a href="#">Facebook</a></div>
							<div class="icon-social-twitter"><a href="#">Twitter</a></div>
							<div class="icon-social-instagram"><a href="#">Instagram</a></div>
					</div>--%>
					<!-- /SHARE LINKS -->
                    <asp:HyperLink ID="HyperLinkFollowers" runat="server" NavigateUrl="#" CssClass="button mid dark spaced">Add to<span class="primary">Followers</span></asp:HyperLink>

                    <%--					<a href="#" class="button mid dark-light">Send a Private Message</a>--%>
                    <asp:HyperLink ID="HyperLinkPrivateMessage" runat="server" NavigateUrl="#" CssClass="button mid dark-light">Send a Private Message</asp:HyperLink>
				</div>
				<!-- /SIDEBAR ITEM -->

				<!-- DROPDOWN -->
				<ul class="dropdown hover-effect">
					<li class="dropdown-item active">
                        <asp:HyperLink ID="HyperLinkProfilePage" runat="server" NavigateUrl="#">Profile Page</asp:HyperLink>
					</li>
					<li class="dropdown-item">
                        <asp:HyperLink ID="HyperLinkBuyBucket" runat="server" NavigateUrl="#">Buy Bucket</asp:HyperLink>
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
				</ul>
				<!-- /DROPDOWN -->

				<%--<!-- SIDEBAR ITEM -->
				<div class="sidebar-item author-reputation full">
					<h4>Admin's Reputation</h4>
					<hr class="line-separator" />
					<!-- PIE CHART -->
					<div class="pie-chart pie-chart1">
						<p class="text-header percent">86<span>%</span></p>
						<p class="text-header percent-info">Recommended</p>
					</div>
					<!-- /PIE CHART -->
					<a href="#" class="button mid dark-light">Read all Reviews</a>
				</div>
				<!-- /SIDEBAR ITEM -->--%>
			</div>
			<!-- /SIDEBAR -->

			<!-- CONTENT -->
            <div class="content right">

             </div>
			<!-- CONTENT -->

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- /SECTION -->
</asp:Content>

