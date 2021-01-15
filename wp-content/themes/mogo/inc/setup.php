<?php
/**
 * Theme basic setup.
 *
 * @package theme_name
 */


// Set the content width based on the theme's design and stylesheet.
if (!isset($content_width)) {
    $content_width = 640; /* pixels */
}

add_action('after_setup_theme', 'theme_setup');

if (!function_exists('theme_setup')) {
    /**
     * Sets up theme defaults and registers support for various WordPress features.
     *
     * Note that this function is hooked into the after_setup_theme hook, which
     * runs before the init hook. The init hook is too late for some features, such
     * as indicating support for post thumbnails.
     */
    function theme_setup()
    {


        // Add default posts and comments RSS feed links to head.
        add_theme_support('automatic-feed-links');

        /*
         * Let WordPress manage the document title.
         * By adding theme support, we declare that this theme does not use a
         * hard-coded <title> tag in the document head, and expect WordPress to
         * provide it for us.
         */
        add_theme_support('title-tag');

        // This theme uses wp_nav_menu() in one location.
        register_nav_menus(array(
            'header' => __('Header Menu', 'theme'),
        ));

        /*
         * Switch default core markup for search form, comment form, and comments
         * to output valid HTML5.
         */
        add_theme_support('html5', array(
            'search-form',
            'comment-form',
            'comment-list',
            'gallery',
            'caption',
        ));

        /*
         * Adding Thumbnail basic support
         */
        add_theme_support('post-thumbnails');


        /*
         * Enable support for Post Formats.
         * See http://codex.wordpress.org/Post_Formats
         */
        add_theme_support('post-formats', array(
            'aside',
            'image',
            'video',
            'quote',
            'link',
        ));

        // Set up the WordPress core custom background feature.
        add_theme_support('custom-background', apply_filters('theme_custom_background_args', array(
            'default-color' => 'ffffff',
            'default-image' => '',
        )));

        // Set up the WordPress Theme logo feature.
        add_theme_support('custom-logo');
    }
}


add_filter('excerpt_more', 'theme_custom_excerpt_more');

if (!function_exists('theme_custom_excerpt_more')) {
    /**
     * Removes the ... from the excerpt read more link
     *
     * @param string $more The excerpt.
     *
     * @return string
     */
    function theme_custom_excerpt_more($more)
    {
        return '';
    }
}

add_filter('wp_trim_excerpt', 'theme_all_excerpts_get_more_link');

if (!function_exists('theme_all_excerpts_get_more_link')) {
    /**
     * Adds a custom read more link to all excerpts, manually or automatically generated
     *
     * @param string $post_excerpt Posts's excerpt.
     *
     * @return string
     */
    function theme_all_excerpts_get_more_link($post_excerpt)
    {

        return $post_excerpt . ' [...]<p><a class="btn btn-secondary theme-read-more-link" href="' . esc_url(get_permalink(get_the_ID())) . '">' . __('Read More...',
                'theme') . '</a></p>';
    }
}
