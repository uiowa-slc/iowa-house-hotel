<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
		 <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
			<ul class="justify MeetingRoomList">
				<% loop $Children %>
					<li class="item">
						<a href="$Link">
							<h3 class="title">$Title</h3>
							<img src="$SlideshowImage1.croppedImage(300,200).URL" alt="$Title">
						 </a>
					</li>
				<% end_loop %>
					<li class="item filler"></li>
			</ul>
			$Content
			$Form
		 </section>
		 <section class="sec-content hide-print">
			<% include SideNav %>
		 </section>
	</div>
</div>
<% include TopicsAndNews %>

