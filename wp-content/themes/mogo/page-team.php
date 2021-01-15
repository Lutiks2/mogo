<?php

/**Template Name: Team
Template Post Type: post, page, product

 */

get_header('dark');
?>

    <section class="team-section container">
        <div class="row">
            <?php

            $paged = get_query_var('paged') ? get_query_var('paged') : 1;
            $args = array(
                'post_type' => 'team',
                'posts_per_page' => 3,
                'paged' => $paged,
            );
            $the_query = new WP_Query($args);
            ?>
            <?php if ($the_query->have_posts()) : ?>
                <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>

                    <div class="col-12 col-md-4 team-item">
                        <?php require get_template_directory() . '/page-sections/team/team-content.php'; ?>
                    </div>

                <?php endwhile; ?>
        </div>


        <div class="wrap-pagination">
                <?php
                $total_pages = $the_query->max_num_pages;

                if ($total_pages > 1) {

                    $current_page = max(1, get_query_var('paged'));

                    echo paginate_links(array(
                        'base' => get_pagenum_link(1) . '%_%',
                        'format' => '/page/%#%',
                        'current' => $current_page,
                        'total' => $total_pages,
                        'prev_text' => __('« prev'),
                        'next_text' => __('next »'),
                    )); ?>
                    </div>
           <?php     }
                wp_reset_postdata();
                ?>
            <?php else: ?>
                <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
            <?php endif; ?>
        </div>
    </section>

<?php
get_footer();
?>