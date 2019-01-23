<div class="account awge-windows awge-windows-top-left">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">{username}'s Cover</h1>
	</div>
	<ul class="awge-windows-toolbar">
		<!-- IMPORT partials/account/menu.tpl -->
	</ul>

	<div class="cover awge-windows-container awge-account-cover" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
		<div class="avatar-wrapper awge-account-avatar" data-uid="{uid}">
			<!-- IF picture -->
			<img src="{picture}" class="avatar avatar-xl avatar-rounded" />
			<!-- ELSE -->
			<div class="avatar avatar-xl avatar-rounded" style="background-color: {icon:bgColor};" title="{username}">{icon:text}</div>
			<!-- ENDIF picture -->
			<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>

			<!-- IF loggedIn -->
			<!-- IF !isSelf -->
			<button class="btn-morph fab <!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing --><!-- IF banned --> hide<!-- ENDIF banned -->" title="<!-- IF isFollowing -->[[global:unfollow]]<!-- ELSE -->[[global:follow]]<!-- ENDIF isFollowing -->">
			<span>
				<span class="s1"></span>
				<span class="s2"></span>
				<span class="s3"></span>
			</span>
		</button>
			<!-- ENDIF !isSelf -->
			<!-- ENDIF loggedIn -->
		</div>

		<div class="awge-profile-container container">
			<!-- IF showHidden -->
			<div class="controls">
				<span class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></span>
				<span class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
				<span class="remove"><i class="fa fa-fw fa-4x fa-times"></i></span>
			</div>
			<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
			<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
			<!-- ENDIF showHidden -->
		</div>
	</div>

	<div class="awge-windows-statusbar">
		<div class="left">
			<p>© 2018 AWGE</p>
		</div>
		<div class="right">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
	</div>
</div>
