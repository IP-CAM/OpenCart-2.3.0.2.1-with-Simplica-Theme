<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/superfish/1.7.7/css/superfish.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/superfish/1.7.7/css/megafish.min.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/jQuery.mmenu/5.5.3/core/css/jquery.mmenu.all.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/superfish/1.7.7/js/superfish.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery.mmenu/5.5.3/core/js/jquery.mmenu.min.all.js"></script>

    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,500,300,700" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/theme/simplica/stylesheet/stylesheet.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
          media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>
<div class="<?php echo $class; ?>">
    <div class="header">
    <nav id="top">
        <div class="container">
            <?php echo $currency; ?>
            <?php echo $language; ?>
            <div id="top-links" class="nav pull-right">
                <ul class="list-inline">
                    <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span
                                class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>

                    <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i
                                    class="fa fa-heart"></i> <span
                                    class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
                    <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i
                                    class="fa fa-shopping-cart"></i> <span
                                    class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a>
                    </li>
                    <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i
                                    class="fa fa-share"></i>
                            <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
                    <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"
                                            class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>
                            <span
                                    class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span
                                    class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <?php if ($logged) { ?>
                            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                            <?php } else { ?>
                            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                            <?php } ?>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div id="logo">
                        <?php if ($logo) { ?>
                        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                                            alt="<?php echo $name; ?>" class="img-responsive"/></a>
                        <?php } else { ?>
                        <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-md-6 col-sm-5"><?php echo $search; ?>
                </div>
                <div class="col-md-3 col-sm-4"><?php echo $cart; ?></div>
            </div>
        </div>
    </header>
    <?php if ($categories) { ?>
    <div class="wrapper">

        <div class="container">

            <a href="#mobile-menu" class="toggle-mnu"><span></span></a>

            <div class="header-wrap clearfix">
                <!--
                      <div class="logo-wrap">
                        <a href="#"><img src="img/menu-logo.png" alt="Alt"></a>
                      </div>
                -->
                <div class="top-mnu clearfix">

                    <ul class="sf-menu">
                        <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
                        <?php foreach ($categories as $category) { ?>
                        <?php if ($category['children']) { ?>
                        <li>
                            <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                            <div class="sf-mega">

                                <div class="container-fluid">

                                    <div class="row">
                                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $childrens) { ?>
                                        <?php foreach ($childrens as $child) { ?>
                                        <div class="col-md-2">
                                            <div class="menu-new-item">
                                                <img src="<?php echo $child['thumb']; ?>" alt="Alt">
                                                <h3>
                                                    <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                                </h3>
                                            </div>
                                            <?php if ($child['subchildren']) { ?>
                                            <ul class="mega-sub">
                                                <?php foreach ($child['subchildren'] as $children) { ?>
                                                <li>
                                                    <a href="<?php echo $children['href']; ?>"><?php echo $children['name']; ?></a>
                                                </li>
                                                <?php } ?>
                                                <a href="<?php echo $child['href']; ?>"
                                                   class="see-all"><?php echo $text_all; ?> <?php echo $child['name']; ?></a>
                                            </ul>
                                            <?php } ?>
                                        </div>
                                        <?php } ?>
                                        <?php } ?>
                                    </div>

                                </div>
                            </div>
                        </li>
                        <?php } else { ?>
                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                        <?php } ?>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
    <?php } ?>
