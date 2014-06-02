<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
		 <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
		 	<div class="meeting-page">

		 		<% if SlideshowImage2 %>
					<div class="flexslider">
						<ul class="slides">
							<% if SlideshowImage1 %><li><img src="$SlideshowImage1.URL" alt="$Title"></li><% end_if %>
							<% if SlideshowImage2 %><li><img src="$SlideshowImage2.URL" alt="$Title"></li><% end_if %>
							<% if SlideshowImage3 %><li><img src="$SlideshowImage3.URL" alt="$Title"></li><% end_if %>
							<% if SlideshowImage4 %><li><img src="$SlideshowImage4.URL" alt="$Title"></li><% end_if %>
						</ul>
					</div>
				<% else %>
					<img src="$SlideshowImage1.URL" alt="$Title">
				<% end_if %>

				<h1 class="name">$Title</h1>

				<% if Number %><p class="number">Room #$Number</p><% end_if %>
				$Content
				$Form

				

				</div>

				<div class="well">
					<p>Book this room by calling 319-335-3513</p>
					<!--<button class="btn btn-primary">Reserve This Room</button>-->
				</div>

				<% if StandardCapacity %>
					<p class="standard_setup_notice">
						* denotes a room's standard setup. The non-standard setup fee is $40.
					</p>
				<% end_if %>

		</section>
		<section class="sec-content hide-print">
			<% include RoomSideNav %>
		</section>
	</div>
</div>
<% include TopicsAndNews %>

