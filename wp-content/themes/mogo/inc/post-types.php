<?php

 function create_post_types()
 {

   $team_member_labels = array(
    'name' => __('Team member'),
    'singular_name' => __('Team member'),
    'add_new' => __('Add Team member'),
    'add_new_item' => __('Add New Team member'),
    'edit_item' => __('Edit Team member'),
    'new_item' => __('New Team member'),
    'view_item' => __('View Team member'),
    'search_items' => __('Search Team member'),
    'not_found' => __('Team member not found'),
    'not_found_in_trash' => __('Team member not found in trash'),
    'parent_item_colon' => __('Parent Testimonial'),
    'menu_name' => __('Team'),
   );
   $eam_member_args = array(
    'labels' => $team_member_labels,
    'hierarchical' => false,
    'supports' => array("title",
 //       "editor",
        "thumbnail"),
    'public' => true,
    'show_ui' => true,
    'show_in_menu' => true,
 //   'menu_icon' => 'dashicons-admin-appearance',
    'show_in_nav_menus' => true,
    'publicly_queryable' => true,
    'exclude_from_search' => false,
    'has_archive' => true,
    'query_var' => true,
    'can_export' => true,
    'rewrite' => true,
    'menu_position' => 15,
    'capability_type' => 'post'
   );
   register_post_type('team', $eam_member_args);

 }

 add_action('init', 'create_post_types');



// /// end Team

function services_post_types()
{

    $services_labels = array(
        'name' => __('Services'),
        'singular_name' => __('Service'),
        'add_new' => __('Add Service'),
        'add_new_item' => __('Add New Service'),
        'edit_item' => __('Edit Service'),
        'new_item' => __('New Service'),
        'view_item' => __('View Service'),
        'search_items' => __('Search Service'),
        'not_found' => __('Service not found'),
        'not_found_in_trash' => __('Service not found in trash'),
        'parent_item_colon' => __('Parent Testimonial'),
        'menu_name' => __('Services'),
    );
    $services_args = array(
        'labels' => $services_labels,
        'hierarchical' => false,
        'supports' => array("title",
//       "editor",
            "thumbnail"),
        'public' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'menu_icon' => 'dashicons-tickets-alt',
        'show_in_nav_menus' => true,
        'publicly_queryable' => true,
        'exclude_from_search' => false,
        'has_archive' => true,
        'query_var' => true,
        'can_export' => true,
        'rewrite' => true,
        'menu_position' => 15,
        'capability_type' => 'post'
    );
    register_post_type('services', $services_args);

}

add_action('init', 'services_post_types');

?>
