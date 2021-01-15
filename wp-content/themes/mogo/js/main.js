$(document).ready(function () {

    $('.menu-btn').on('click', function () {
        let nav = $('.header-navigation')
        $(this).toggleClass('menu-btn_active')
        if (nav.is(':visible')) {
            nav.slideUp()
        } else {
            nav.slideDown()
        }
    })

    $('.menu-item').on('click', function () {
        let nav = $('.header-navigation')
        nav.slideUp()
        $('.menu-btn_active').toggleClass('menu-btn_active')
    })

    ///welcome slider

    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 30,
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        breakpoints: {
            768: {
                slidesPerView: 4,
                spaceBetween: 45,
            },
        }
    })
    var galleryTop = new Swiper('.gallery-top', {
        spaceBetween: 0,
        loop: true,
        autoplay: {
            delay: 3500,
            disableOnInteraction: false,
        },
        // navigation: {
        //   nextEl: '.swiper-button-next',
        //   prevEl: '.swiper-button-prev',
        // },
        breakpoints: {
            768: {
                autoplay: false,
            },
        },
        thumbs: {
            swiper: galleryThumbs
        }
    })

    //for accordeon
    $('.collapse').collapse();

    // search form
    $(document).on('click', '.mogo-search', function () {
        var nav = $('.searching')
        $('.mogo-search').toggleClass('active')
        if (nav.is(':visible')) {
            nav.slideUp()
        } else {
            nav.slideDown()
        }
    });

});