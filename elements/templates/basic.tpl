<html>
<head>
{include 'file:chunks/head.tpl'}
[[*parent:is=`57`:then=`<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="//api-maps.yandex.ru/2.1/?lang=ru_RU" ></script>
<script type="text/javascript" src="//api-maps.yandex.ru/2.1/?lang=ru_RU&load=Map,Placemark,GeoObjectCollection,map.addon.balloon,geoObject.addon.balloon,package.controls,templateLayoutFactory,overlay.html.Placemark" ></script>`]]
</head>
<body class="no_bg">
{include 'file:chunks/header.tpl'}
<div class="container">
<div class="row content">
{include 'file:chunks/crumbs.tpl'}
<div class="col-xs-20">
<h1>[[*longtitle]]</h1>
{ignore}[[*id:is=`415`:then=`[[$ya_search]]`]]{/ignore}
[[*content]]
[[*parent:is=`57`:then=`[[!yandexMaps?
	&tvCoords=`coords `
	&styleMapBlock=`width:100%;height:400px;`
	&markerPreset=`islands#violetStretchyIcon`
	&zoom=`16`
	&checkZoomRange=`0`
	&centerCoords=`[[*coords]]`
]]`]]
</div>
</div>
</div> <!-- End Container -->
{include 'file:chunks/footer.tpl'}
<!-- Add Scripts -->
[[*parent:ne=`57`:then=`<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>`]]
<script src="/assets/theme/js/jquery.maskedinput.js"></script>
<script src="/assets/theme/js/scripts.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script async="async" src="https://w.uptolike.com/widgets/v1/zp.js?pid=1466624" type="text/javascript"></script>
<!-- Add Scripts End -->
{include 'modals'}
</body>
</html>