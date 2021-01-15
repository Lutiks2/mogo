<?php ?>

<?php
$image = get_field('member_foto');
if (!empty($image)): ?>
    <div class="parent-wrap">
        <div class="parent">
            <img class="image" src="<?php echo esc_url($image['url']); ?>"
                 alt="<?php echo esc_attr($image['alt']); ?>"/>
            <div class="share">
                <div class="share-wrap">
                    <?php
                    if (have_rows('member_share')):
                        // Loop through rows.
                        while (have_rows('member_share')) : the_row(); ?>
                            <a class="share-item" href="<?php get_sub_field('link'); ?>"
                               target="_blank">
                                <?php $image_share = get_sub_field('link_image'); ?>
                                <img class="share-item-link"
                                     src="<?php echo esc_url($image_share['url']); ?>"
                                     alt="<?php echo esc_attr($image_share['alt']); ?>"/>
                            </a>
                        <?php
                        endwhile;
                    endif; ?>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>
<a href="<?php the_permalink(); ?>">
    <h3 class="member-name"><?php the_field('member_name'); ?></h3>
    <p class="member-position"><?php the_field('member_position'); ?></p>
</a>
