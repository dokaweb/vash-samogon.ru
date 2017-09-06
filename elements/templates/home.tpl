<!doctype html>
<html lang="ru">
<head>
    {include 'file:chunks/head.tpl'}
</head>
<body>
{include 'file:chunks/header.tpl'}
<!--<div class="container-fluid banner_top"></div>-->
<div class="container wrap_site_content">
    <div class="row">
        {include 'file:chunks/side_left.tpl'}
        <div class="col-xs-14 col-xs-offset-1 contents">
            {'BannerY' | snippet : [
                'postion' => 1,
                'tpl' => '@FILE chunks/bannery.tpl',
            ]}
            <h1>{$_modx->resource.longtitle}</h1>
            {block 'content'}
                {$_modx->resource.content}
            {/block}
        </div>
    </div>
</div> <!-- End Container -->
{include 'file:chunks/footer.tpl'}
{include 'file:chunks/add_scripts.tpl'}
</body>
</html>