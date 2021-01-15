<?php ?>

<?php ?>

<section class="welcome">
    <div class="swiper-container gallery-top row">
        <div class="swiper-wrapper development-slider-wrap">
            <?php
            while (have_rows('welcome_slider')) :
                the_row(); ?>

                <div class="swiper-slide"
                     style="background: url(<?php the_sub_field('slider_image'); ?>) no-repeat center/cover">
                </div>

            <?php endwhile;
            wp_reset_query();
            ?>

        </div>
    </div>

    <div class="welcome-block">
        <div class="container">
            <p class="welcome-subheading"><?php the_sub_field('welcome_subheading'); ?></p>
            <h1 class="welcome-heading"><?php the_sub_field('welcome_heading'); ?></h1>
            <div class="btn-wrap">
                <?php
                $link = get_sub_field('welcome_link');
                if ($link):
                    $link_url = $link['url'];
                    $link_title = $link['title'];
                    $link_target = $link['target'] ? $link['target'] : '_self';
                    ?>
                    <a class="welcome-btn" href="<?php echo esc_url($link_url); ?>"
                       target="<?php echo esc_attr($link_target); ?>">
                        <?php echo esc_html($link_title); ?>
                    </a>
                <?php endif; ?>
            </div>
            <div class="swiper-container gallery-thumbs">
                <div class="swiper-wrapper">
                    <?php
                    while (have_rows('welcome_slider')) :
                        the_row(); ?>

                        <div class="swiper-slide">
                            <div class="thumbs">
                                <span class="slide-number"><?php the_sub_field('slide_number'); ?></span>
                                <span class="slide-text"><?php the_sub_field('slide_text'); ?></span>
                            </div>
                        </div>

                    <?php endwhile;
                    wp_reset_query();
                    ?>

                </div>
            </div>
        </div>
    </div>
</section>


