<?php ?>

<section class="container section">
    <div class="wrap-heading">
        <h2>
            <span class="subheading"><?php the_sub_field('subheading'); ?></span><br>
            <span class="heading"><?php the_sub_field('heading'); ?></span>
        </h2>
    </div>
    <p class="section-description"><?php the_sub_field('description'); ?></p>
    <div class="row">
        <?php
        $featured_posts = get_sub_field('teams');

        if ($featured_posts): ?>

            <?php foreach ($featured_posts as $post):
                setup_postdata($post); ?>
                <div class="col-12 col-md-4 team-item">
                    <?php require get_template_directory() . '/page-sections/team/team-content.php'; ?>
                </div>
            <?php endforeach; ?>
            <!--            Reset the global post object so that the rest of the page works correctly.-->
            <?php wp_reset_postdata(); ?>

        <?php endif; ?>
    </div>
</section>

