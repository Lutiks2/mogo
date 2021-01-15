<?php
?>

<?php get_header('dark'); ?>

<div class="search-page container">

    <? if( have_posts() ):
        while(have_posts()): the_post(); ?>
        <? endwhile; ?>
    <? else: ?>
        <h4 class="search-page-non"><?php echo 'We couldn\'t find anything for "' . '<span>' . get_search_query() . '</span>'; ?>"</h4>
    <? endif; ?>

</div>
<?php get_footer(); ?>

