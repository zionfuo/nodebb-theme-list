<div class="recent">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="btn-toolbar">
		<div class="pull-left">
			<!-- IF loggedIn -->
			<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
		</div>

		<!-- IMPORT partials/category-filter.tpl -->

		<div class="btn-group pull-right bottom-sheet <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
			{selectedFilter.name} <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<!-- BEGIN filters -->
				<li class="category">
					<a href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
				</li>
				<!-- END filters -->
			</ul>
		</div>
	</div>

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">[[recent:no_recent_topics]]</div>
		<!-- ENDIF !topics.length -->

		<a href="{config.relative_path}/{selectedFilter.url}">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>