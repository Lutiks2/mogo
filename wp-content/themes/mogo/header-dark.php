<?php
/**
 * The header for our theme
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-title" content="<?php bloginfo('name'); ?> - <?php bloginfo('description'); ?>">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
  <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">

    <header id="masthead" class="site-header">
        <div class="sticky-main header-container header-dark">
            <div class="site-branding header-block">
                <?php if (is_front_page()) : ?>
                    <div class="site-title screen-reader-text">
                        <div class="menu-view"><?php the_custom_logo(); ?></div>
                    </div>
                <?php else : ?>
                    <div class="menu-view"><?php the_custom_logo(); ?></div>
                <?php endif; ?>

                <!-- .site-branding -->

                <nav id="site-navigation" class="main-navigation">
                    <div class="but-menu">
                        <a class="menu-btn" href="#">
                            <span></span>
                        </a>
                    </div>
                    <div id="header" class="header-navigation">
                        <?php
                        wp_nav_menu(array(
                            'theme_location' => 'header',
                            'menu_id' => 'header-menu',
                        ));
                        ?>
                        <ul class="more-nav">
                            <li class="more-nav-card">
                                <img src="<?php echo get_template_directory_uri(); ?>/images/icons/cart.png">
                            </li>
                            <li class="more-nav-search">
                                <img class="marz-search" src="<?php echo get_template_directory_uri(); ?>/images/icons/search.png">
                                <div class="searching"><?php get_search_form(); ?></div>
                            </li>
                        </ul>
                    </div>

                </nav><!-- #site-navigation -->
            </div>
        </div>

    </header><!-- #masthead -->


    <div id="content" class="site-content">
