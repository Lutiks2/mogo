<?php
/**
 * theme enqueue scripts
 *
 * @package theme_name
 */

if ( ! function_exists( 'theme_scripts' ) ) {
	/**
	 * Load theme's JavaScript and CSS sources.
	 */
	function theme_scripts() {
		// Get the theme data.
		$the_theme = wp_get_theme();
		$theme_version = $the_theme->get( 'Version' );

		$css_version = $theme_version . '.' . filemtime(get_template_directory() . '/dist/css/main.min.css');
    wp_enqueue_style( 'bootstrap-css', get_stylesheet_directory_uri() . '/src/css/bootstrap.min.css', array(), $css_version );
    wp_enqueue_style( 'bootstrap-navbar', get_stylesheet_directory_uri() . '/src/css/navbar.min.css', array(), $css_version );
    wp_enqueue_style( 'swiper-slider', get_stylesheet_directory_uri() . '/src/css/swiper-bundle.min.css', array(), $css_version );

    wp_enqueue_style( 'theme-styles', get_stylesheet_directory_uri() . '/dist/css/main.min.css', array(), $css_version );

    wp_register_script('jquery3.5.1', get_template_directory_uri() . "/src/js/jquery-3.5.1.min.js", array(), 1, TRUE);
    wp_enqueue_script('jquery3.5.1');

    wp_register_script('bootstrap-js', get_template_directory_uri() . "/src/js/bootstrap.bundle.min.js", array(), 1, TRUE);
    wp_enqueue_script('bootstrap-js');

        wp_register_script('swiper-slider-js', get_template_directory_uri() . "/src/js/swiper-bundle.min.js", array(), 1, TRUE);
        wp_enqueue_script('swiper-slider-js');

        wp_register_script('mousewheel-js',get_template_directory_uri() . "/src/js/jquery.mousewheel.min.js", array(), 1, TRUE);
        wp_enqueue_script('mousewheel-js');


		$js_version = $theme_version . '.' . filemtime(get_template_directory() . '/dist/js/main.min.js');
		wp_enqueue_script( 'theme-scripts', get_template_directory_uri() . '/dist/js/main.min.js', array(), $js_version, true );

	}
} // endif function_exists( 'theme_scripts' ).

add_action( 'wp_enqueue_scripts', 'theme_scripts' );
