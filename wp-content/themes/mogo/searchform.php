<?php ?>
<form role="search" method="get" id="searchform" action="<?php echo home_url('/'); ?>">
    <div class="search-wrap">
        <input class="searching-text" type="text" value="<?php echo get_search_query() ?>" name="s" id="s"/>
        <input  class="searching-submit" type="submit" id="searchsubmit" value="Search"/>
    </div>
</form>

