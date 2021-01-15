<?php
/**
 * theme functions and definitions
 *
 * @package PixelGrow_theme
 */

/**
 * Theme setup and custom theme supports.
 */
require get_template_directory() . '/inc/setup.php';

/**
 * Enqueue scripts and styles.
 */
require get_template_directory() . '/inc/enqueue.php';

/**
 *  Custom post type registrations.
 */
require get_template_directory() . '/inc/post-types.php';


function set_image_svg($patch, $class = false)
{
    if (strpos($patch, '.svg') > 0) {
        $url = $patch;
        $uploads = wp_upload_dir();
        $image_path = str_replace($uploads['baseurl'], $uploads['basedir'], $url);
        $content = file_get_contents($image_path);
    } else {
        $content = ' <img class="' . $class . '" src="<' . $patch . '">';
    }
    return $content;
}

function requireToVar($file)
{
    ob_start();
    require($file);
    return ob_get_clean();
}


function getPostViews($postID){
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
        return "0";
    }
    return $count.'';
}
function setPostViews($postID) {
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    }else{
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
}










