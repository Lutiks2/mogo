<?php

get_header('dark');
?>

<section class="team-section container">
    <?php $paged = get_query_var('paged') ? get_query_var('paged') : 1; ?>
    <?php $args = array(
        'post_type' => 'post',
        'posts_per_page' => 3,
        'orderby' => 'date',
        'paged' => $paged,
    ); ?>

    <?php $myquery = new WP_Query($args); ?>
    <div class="row">
        <?php if ($myquery->have_posts()) : ?>
        <?php while ($myquery->have_posts()): $myquery->the_post(); ?>

            <article class="col-12 col-md-4 team-item">
                <a href="<?php the_permalink(); ?>">
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
                </a>
                <div class="block-view">
                    <div class="view-item"><?php echo getPostViews(get_the_ID()); ?></div>
                    <div class="view-item view-item-speech"><?php comments_popup_link('0', '1 ', ' %'); ?></div
                </div>
            </article>


        <?php endwhile;

        ?>
    </div>
<?php
$total_pages = $myquery->max_num_pages;

if ($total_pages > 1) {

    $current_page = max(1, get_query_var('paged')); ?>
    <div class="wrap-pagination">
        <?php echo paginate_links(array(
            'base' => get_pagenum_link(1) . '%_%',
            'format' => '/page/%#%',
            'current' => $current_page,
            'total' => $total_pages,
            'prev_text' => __('« prev'),
            'next_text' => __('next »'),
        )); ?>
    </div>
<?php }
wp_reset_postdata();
?>
<?php else : ?>
    <p><?php esc_html_e('Нет постов по вашим критериям.'); ?></p>
<?php endif; ?>
    <!--    </div>-->
</section>
