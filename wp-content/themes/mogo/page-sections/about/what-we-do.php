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
        <div class="col-12 col-lg-6 accordion-section">
            <?php
            $image = get_sub_field('image');
            if( !empty( $image ) ): ?>
                <img class="whatwedo-image" src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
            <?php endif; ?>
        </div>
        <div class="col-12 col-lg-6 accordion-section">
            <?php
            $featured_posts = get_sub_field('service');
            if ($featured_posts): ?>
                <div class="accordion" id="accordionExample">
                <?php foreach ($featured_posts as $post):

                    setup_postdata($post);
                    $i =0;
                    ?>
                    <?php while (have_rows('services')) : the_row();
                    $i++;
                    if (get_row_layout() == 'service_block'):
                         ?>

                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <div class="mb-0">
                                        <div class="accordion-wrap"  data-toggle="collapse" data-target="#collapseOne<?php the_ID(); ?>" aria-expanded="true" aria-controls="collapseOne">
                                            <?php
                                            $image = get_sub_field('image');
                                            if( !empty( $image ) ): ?>
                                                <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
                                            <?php endif; ?>
                                            <h3 class="card-header-heading"><?php echo get_sub_field('heading'); ?></h3>
                                        </div>
                                    </div>
                                </div>

                                <div id="collapseOne<?php the_ID(); ?>" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <p class="card-description"><?php echo get_sub_field('description'); ?></p>
                                    </div>
<!--                                    <div class="card-body">-->
<!--                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.-->
<!--                                    </div>-->
                                </div>
                            </div>


                    <?php endif; ?>

                    <!--                    // End loop.-->
                <?php endwhile; ?>

                <?php endforeach; ?>
                <!--            Reset the global post object so that the rest of the page works correctly.-->
                <?php wp_reset_postdata(); ?>
        </div>
            <?php endif; ?>
        </div>
    </div>
</section>

