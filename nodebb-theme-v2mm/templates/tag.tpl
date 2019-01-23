<div class="tag">
    <div class="clearfix tag-header-wrapper">
        <div class="pull-left">
        <!-- IMPORT partials/breadcrumbs.tpl -->
        </div>

        <div class="pull-right">
            <!-- IF loggedIn -->
            <button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
            <!-- ELSE -->
            <a component="category/post/guest" href="{config.relative_path}/login" rel="nofollow" class="btn btn-primary">[[category:guest-login-post]]</a>
            <!-- ENDIF loggedIn -->
        </div>
    </div>

    <!-- IF !topics.length -->
    <div class="alert alert-warning">
        <strong>[[tags:no_tag_topics]]</strong>
    </div>
    <!-- ENDIF !topics.length -->

    <div class="category row">
        <div class="col-md-12">
            <!-- IMPORT partials/topics_list.tpl -->
            <button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
            <!-- IF config.usePagination -->
                <!-- IMPORT partials/paginator.tpl -->
            <!-- ENDIF config.usePagination -->
        </div>
    </div>
</div>
