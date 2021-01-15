<?php
/**
 * Template Name: About
 */

get_header();
?>

    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <?php while (have_rows('about')) : the_row(); ?>


                <?php if (get_row_layout() == 'welcome_section'): ?>

                    <?php require get_template_directory() . '/page-sections/about/welcome.php'; ?>

                <?php elseif (get_row_layout() == 'what_we_do_section'): ?>

                   <?php require get_template_directory() . '/page-sections/about/what-we-do.php'; ?>

                <?php elseif (get_row_layout() == 'team_section'): ?>

                    <?php require get_template_directory() . '/page-sections/about/team-section.php'; ?>

                <?php elseif (get_row_layout() == 'stories_section'): ?>

                    <?php require get_template_directory() . '/page-sections/about/latest-blog.php'; ?>
                <?php endif; ?>
            <?php endwhile; ?>

        </main><!-- #main -->
    </div><!-- #primary -->

<?php
get_footer();
