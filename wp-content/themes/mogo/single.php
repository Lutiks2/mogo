<?php
/**
 * The template for displaying all single posts.
 *
 * @package PixelGrow_theme
 */

get_header('dark');
?>
<section class="team-section container">

    <div class="row">
            <article class="col-12 col-md-4 team-item">

                    <div class="thumb-wrap">
                        <?php the_post_thumbnail(); ?>
                        <div class="thumb-date">
                            <span class="date"><?php echo get_the_date('d'); ?></span>
                            <span class="month"><?php echo get_the_date('M'); ?></span>
                        </div>
                    </div>

                    <h1 class="post-title"><?php the_title() ?></h1>
                    <div class="post-content">
                        <?php the_content(); ?>
                    </div>
                    <div class="block-view">
                        <?php setPostViews(get_the_ID()); ?>
                        <div class="view-item"><?php echo getPostViews(get_the_ID()); ?></div>
                        <div class="view-item view-item-speech"><?php comments_popup_link('0', '1 ', ' %'); ?></div
                    </div>

            </article>
    </div>

</section>

<?php get_footer(); ?>
