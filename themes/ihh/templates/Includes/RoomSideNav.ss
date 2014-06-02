<% with Parent %>
	<h3 class="section-title"><% if $LinkOrCurrent = "current" %>$MenuTitle<% else %><a href="$Link">$MenuTitle</a><% end_if %></h3>
	<nav class="sec-nav">
		<ul class="first-level">
			<% loop Children %>
			<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>><a href="$Link">$MenuTitle</a></li>
			<% end_loop %>
		</ul>
	</nav>
<% end_with %>
<aside>
	<% if Parent.SidebarItems %>
		<% loop Parent.SidebarItems %>
			<% include SidebarItem %>
		<% end_loop %>
	<% end_if %>
</aside>