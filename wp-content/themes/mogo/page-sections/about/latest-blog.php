<?php ?>

<section class="container section">
    <div class="wrap-heading">
        <h2>
            <span class="subheading"><?php the_sub_field('subheading'); ?></span><br>
            <span class="heading"><?php the_sub_field('heading'); ?></span>
        </h2>
    </div>

    <?php $myquery = new WP_Query('orderby=date&posts_per_page=3'); ?>
    <div class="row">
        <?php while ($myquery->have_posts()): $myquery->the_post(); ?>
            <!--                            //                        get_template_part('template-parts/blog/content', 'blog-page');-->
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
                        <?php $content = get_the_content();
                        $trimmed_content = wp_trim_words($content, 15, '.');
                        echo $trimmed_content; ?>
                    </div>
                </a>
                <div class="block-view">
                    <div class="view-item"><?php echo getPostViews(get_the_ID()); ?></div>
                    <div class="view-item view-item-speech"><?php comments_popup_link('0', '1 ', ' %'); ?></div
                </div>

            </article>

        <?php endwhile;
        wp_reset_postdata();
        ?>
    </div>

</section>
