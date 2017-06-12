<footer class="footer clearfix" role="contentinfo">
	<div class="row">
		<div class="medium-6 large-5 columns">

			<% if $SiteConfig.DisableDivisionBranding %>
				<a href="http://uiowa.edu" class="hide-print footer-logo"><img src="division-project/images/ui-logo-footer.png" alt="The University of Iowa"></a>
			<% else %>
			<a href="http://studentlife.uiowa.edu" class="hide-print footer-logo"><img src="division-project/images/dosl-uiowa.png" alt="Division Of Student Life"></a>
			<% end_if %>
			<% if $SiteConfig.GroupSummary %>
				$SiteConfig.GroupSummary
			<% else_if $SiteConfig.DisableDivisionBranding %>
				<p>In pursuing its missions of teaching, research, and service, the University seeks to advance scholarly and creative endeavor through leading-edge research and artistic production; to use this research and creativity to enhance undergraduate, graduate, and professional education, health care, and other services provided to the people of Iowa, the nation, and the world; and to educate students for success and personal fulfillment in a diverse world.</p>
			<% else %>
				<p>The Division of Student Life fosters student success by creating and promoting inclusive educationally purposeful services and activities within and beyond the classroom.</p>
			<% end_if %>
			<div itemscope itemtype="http://schema.org/PostalAddress">
				<p>
					$SiteConfig.Title<br />
					<span itemprop="streetAddress">125 N. Madison Street</span>
					<br /><span itemprop="addressLocality">Iowa City</span>, <span itemprop="addressRegion">IA</span>&nbsp;<span itemprop="postalCode">52242</span><br />
					<% if $SiteConfig.PhoneNumber %>
						<br />Phone: <span itemprop="telephone">$SiteConfig.PhoneNumber</span>
					<% end_if %>

					<% if $SiteConfig.EmailAddress %>
						<br /><a href="mailto:$SiteConfig.EmailAddress"><span itemprop="email">$SiteConfig.EmailAddress</span></a>
					<% end_if %>
				</p>
			</div>
		</div>
		<div class="medium-6 large-4 columns">
			<div class="row">
				<div class="small-6 columns">
					<ul class="border-list">
						<% loop Menu(1) %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
				</div>
				<div class="small-6 columns" itemscope itemtype="http://schema.org/Organization">
					<link itemprop="url" href="$AbsoluteBaseURL">
 					<ul class="border-list">
						<% if $SiteConfig.FacebookLink %>
							<li><a href="$SiteConfig.FacebookLink" target="_blank" itemprop="sameAs"><span class="social-icon">F</span> Facebook</a></li>
						<% end_if %>
						<% if $SiteConfig.TwitterLink %>
							<li><a href="$SiteConfig.TwitterLink" target="_blank" itemprop="sameAs"><span class="social-icon">t</span> Twitter</a></li>
						<% end_if %>
						<% if $SiteConfig.VimeoLink %>
							<li><a href="$SiteConfig.VimeoLink" target="_blank" itemprop="sameAs"><span class="social-icon">v</span> Vimeo</a></li>
						<% end_if %>
						<% if $SiteConfig.YouTubeLink %>
							<li><a href="$SiteConfig.YouTubeLink" target="_blank" itemprop="sameAs"><span class="social-icon">y</span> Youtube</a></li>
						<% end_if %>
						<% if $SiteConfig.InstagramLink %>
							<li><a href="$SiteConfig.InstagramLink" target="_blank" itemprop="sameAs"><span class="social-icon">i</span> Instagram</a></li>
						<% end_if %>
					</ul>
				</div>
			</div>
		</div>
		<div class="medium-12 large-3 columns">
			<% if $SiteConfig.DisableDivisionBranding %>

			<% else %>
				<h4>Support The Division</h4>
				<a href="http://givetoiowa.org/studentlife" class="footer-btn">Give Online Now</a>
			<% end_if %>
		</div>
	</div>
	<div class="row">
		<div class="small-12 columns">
			<hr>
			<p>&copy; $Now.Year <a href="http://www.uiowa.edu/" target="_blank">The University of Iowa</a>. All Rights Reserved. <a href="http://www.uiowa.edu/homepage/online-privacy-information" target="_blank">Privacy Information</a></p>
		</div>
	</div>
</footer>