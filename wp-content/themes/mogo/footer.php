<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 *
 * @package PixelGrow_theme
 */

?>

</div><!-- #content -->

<footer class="footer section">
    <div class="container">
        <p class="footer-info"><?php the_field('footer_info', 'option'); ?></p>
    </div>
</footer>
</div><!-- #page -->
<script type="text/javascript">
  var globalurl = "<?php echo esc_attr(site_url()); ?>";
</script>
<?php wp_footer();?>

</body>
</html>
