$Header
<main class="main-content__container" id="main-content__container">

	<!-- Background Image Feature -->
	<% if $BackgroundImage %>
		<% include FeaturedImage %>
	<% end_if %>
	$Breadcrumbs
<% if not $BackgroundImage %>
	<div class="column row">
		<div class="main-content__header">
			<h1>$Title</h1>
		</div>
	</div>
<% end_if %>

$BlockArea(BeforeContent)

<div class="row">
	<article role="main" class="main-content main-content--with-padding <% if $SiteConfig.ShowExitButton %>main-content--with-exit-button-padding<% end_if %> <% if $Children || $Menu(2) || $SidebarBlocks ||  $SidebarView.Widgets %>main-content--with-sidebar<% else %>main-content--full-width<% end_if %>">
		$BlockArea(BeforeContentConstrained)
		<% if $MainImage %>
			<img class="main-content__main-img" src="$MainImage.ScaleMaxWidth(500).URL" alt="" role="presentation"/>
		<% end_if %>
		 		<% if $SlideshowImage1 || $SlideshowImage2 || $SlideshowImage3 || $SlideshowImage4 %>
					<div class="slideshow">
						<div class="slideshow__slide">
							<% if SlideshowImage1 %>
								<img class="slideshow__img" data-flickity-lazyload="$SlideshowImage1.FocusFill(840, 525).URL" width="840" height="525" alt="" role="presentation" />
							<% end_if %>
						</div>
						<% if SlideshowImage2 %>
							<div class="slideshow__slide">
								<img class="slideshow__img" data-flickity-lazyload="$SlideshowImage2.FocusFill(840, 525).URL" width="840" height="525" alt="" role="presentation" />
							</div>
						<% end_if %>
						<% if SlideshowImage3 %>
							<div class="slideshow__slide">
								<img class="slideshow__img" data-flickity-lazyload="$SlideshowImage3.FocusFill(840, 525).URL" width="840" height="525" alt="" role="presentation" />
							</div>
						<% end_if %>		
						<% if SlideshowImage4 %>
							<div class="slideshow__slide">
								<img class="slideshow__img" data-flickity-lazyload="$SlideshowImage4.FocusFill(840, 525).URL" width="840" height="525" alt="" role="presentation" />
							</div>
						<% end_if %>														
					</div>
				<% else_if $SlideshowImage1 %>
					<img src="$SlideshowImage1.CroppedImage(760, 506).URL" alt="$Title">
				<% end_if %>
		<div class="main-content__text">
			$Content
		</div>
		<div class="room-single__contact">
			<p>Book this room by calling 319-335-3513 or by <a href="https://clients.innroad.com/iowa/property.aspx" target="_blank">making a reservation online</a></p>
		</div>
		$BlockArea(AfterContentConstrained)
		$Form
		<% if $ShowChildPages %>
			<% include ChildPages %>
		<% end_if %>
	</article>
	<aside class="sidebar dp-sticky">
		<% include SideNav %>
		<% if $SideBarView %>
			$SideBarView
		<% end_if %>
		$BlockArea(Sidebar)
	</aside>
</div>
$BlockArea(AfterContent)

</main>
