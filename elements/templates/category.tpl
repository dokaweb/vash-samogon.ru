<html>
<head>
    {include 'file:chunks/head.tpl'}
</head>
<body>
{include 'file:chunks/header.tpl'}
<div class="container">
<div class="row content">
{include 'file:chunks/crumbs.tpl'}
{include 'file:chunks/side_left.tpl'}
    <div class="col-xs-15 contents">
    <h1>[[*longtitle]]</h1>
    [[*id:is=`3`:or:if=`[[*id]]`:is=`1572`:or:if=`[[*id]]`:is=`1544`:or:if=`[[*id]]`:is=`1545`:or:if=`[[*id]]`:is=`1546`:or:if=`[[*id]]`:is=`1547`:or:if=`[[*id]]`:is=`1593`:or:if=`[[*id]]`:is=`1604`:or:if=`[[*id]]`:is=`1537`:or:if=`[[*id]]`:is=`1542`:or:if=`[[*id]]`:is=`1566`:or:if=`[[*id]]`:is=`1571`:or:if=`[[*id]]`:is=`1574`:or:if=`[[*id]]`:is=`1579`:or:if=`[[*id]]`:is=`1552`:or:if=`[[*id]]`:is=`1553`:or:if=`[[*id]]`:is=`1548`:then=`
		{'pdoResources' | snippet : [
			'parents' => [[*id]],
			'depth' => 0,
			'tpl' => '@FILE chunks/catalog_tpl.tpl',
			'limit' => 0,
			'includeTVs' => 'image',
			'sortby' => '{"menuindex":"ASC"}',
		]}
    `:else=`<div class="goodsList q-goodsList">
	{'pdoPage' | snippet : [
		'element' => 'msProducts',
		'parents' => '[[*id]]',
		'tpl' => '@FILE chunks/tpl.msProductsCat.row.tpl',
		'limit' => 0,
		'sortby' => 'Data.price',
	]}
	[[!+page.nav]]
	</div>`]]
    [[*content]]
</div>
</div>
</div> <!-- End Container -->
{include 'file:chunks/footer.tpl'}
<!-- Add Scripts -->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script async="async" src="https://w.uptolike.com/widgets/v1/zp.js?pid=1466624" type="text/javascript"></script>
<!-- Add Scripts End -->
{ignore}
<script>
$(document).on('click','button.btn-submit',function(e){
	var pid = $(this).data('pid') || 0;
	var pname = $(this).data('pname');
	var pimg = $(this).data('pimg');
	var pprice = $(this).data('pprice');
	$('#pname').empty();
	$('#pprice').empty();
	$('#modal_img').empty();
	$('#pname').prepend(pname);
	$('#pprice').prepend(pprice);
	$('#modal_img').prepend('<img src="'+pimg+'" id="modal-img" width="100"/>')
	$('.modal_cart').fadeIn("normal");
});
</script>
{/ignore}
<div class="modal_cart" style="display: none;">
    <div class="modal_content">
        <div class="closebox"><a href="#" class="close-btn deletemodal"></a></div>
        <h3><i class="fa fa-check"></i> Товар добавлен в корзину</h3>
        <div class="modal_info">
        	<div id="modal_img"></div>
            <strong id="pname"></strong>
            <div class="mod_price">Цена: <span class="price" id="pprice"></span> <i class="fa fa-rub"></i></div>
            <div class="clearfix"></div>
        <div class="buttons_modals">
            <a class="button_stay" href="javascript:;" onclick="jQuery('.modal_cart').hide()">Продолжить покупки</a>
            <a class="btn btn-default" href="/cart.html" style="padding: 15px 20px;">Оформить заказ</a>
        </div>
        </div>
    </div>
</div>
{include 'file:chunks/modals.tpl'}
</body>
</html>