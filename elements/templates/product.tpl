<html>
<head>
{include 'file:chunks/head.tpl'}
</head>
<body class="no_bg">
{include 'file:chunks/header.tpl'}
<div class="container">
<div class="row content">
{include 'file:chunks/crumbs.tpl'}
<div class="col-xs-20">
	<div itemscope itemtype="http://schema.org/Product">
		{include 'msProduct_tovar.content'}
<div class="tabs">
	<input id="tab1" type="radio" name="tabs" checked>
    <label for="tab1" title="Описание" class="control-labels"><i class="fa fa-align-justify"></i> Описание</label>
 
    <input id="tab2" type="radio" name="tabs">
    <label for="tab2" title="Отзывы" class="control-labels"><i class="fa fa-star"></i> Отзывы {'!ecMessagesCount' | snippet : ['subject' => 'Отзыв',]}</label>
 
    <input id="tab3" type="radio" name="tabs">
    <label for="tab3" title="Вопросы" class="control-labels"><i class="fa fa-comment"></i> Вопросы {'!ecMessagesCount' | snippet : ['subject' => 'Вопрос',]}</label>
	
	[[*obzor:notempty=`<input id="tab4" type="radio" name="tabs">
    <label for="tab4" title="Обзор" class="control-labels"><i class="fa fa-video-camera"></i> Обзор</label>`]]
	
	[[!FileAttach:notempty=`<input id="tab5" type="radio" name="tabs">
    <label for="tab5" title="Обзор" class="control-labels"><i class="fa fa-book"></i> Инструкции</label>`]]
    
	<input id="tab6" type="radio" name="tabs">
    <label for="tab6" title="Доставка" class="control-labels"><i class="fa fa-car"></i> Доставка</label>
    
    <section id="content1" itemprop="description">
		{block 'content'}
			{$_modx->resource.content}
		{/block}
    </section>  
    <section id="content2">
    	{'!ecMessages' | snippet : ['subject' => 'Отзыв',]}
    	{'!ecForm' | snippet : ['tplForm' => 'tpl.ecForm.related',]}
    </section>  
    <section id="content3">
    	{'!ecMessages' | snippet : ['subject' => 'Вопрос',]}
    	{'!ecForm' | snippet : ['tplForm' => 'tpl.ecForm.vopros',]}
    </section> 
    
    [[*obzor:notempty=`<section id="content4">
        [[*obzor]]
    </section>`]]
    
     [[!FileAttach:notempty=`<section id="content5">
       [[FileAttach? &makeURL=`true`]]
    </section>`]]
    
    <section id="content6">
    	<p><img src="/assets/theme/img/dostavka.jpg"><br></p>
		<p>Интернет-магазин &laquo;Ваш Самогон&raquo; осуществляет доставку самогонных аппаратов по всей территории России. Мы сотрудничаем с ведущими транспортными компаниями, поэтому сроки доставки максимально быстрые.</p>
		<p>Посмотреть карту охвата службой доставки интернет-магазина Ваш самогон Вы можете в разделе <a href="[[~4]]">Доставка</a>.</p>
		<p>Также обращаем Ваше внимание на то, что при заказе от 5 000 руб доставка по всей России - всего 350 рублей!</p>
		<p>С нами удобно!</p>
    </section>
</div>
</div>
</div>
</div>
</div> <!-- End Container -->
{include 'file:chunks/footer.tpl'}
<!-- Add Scripts -->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.51/jquery.form.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script async="async" src="https://w.uptolike.com/widgets/v1/zp.js?pid=1466624" type="text/javascript"></script>
<!-- Add Scripts End -->
<script type="text/javascript" src="/assets/theme/fancybox/source/jquery.fancybox.pack.js"></script>
<link rel="stylesheet" href="/assets/theme/fancybox/source/jquery.fancybox.css" type="text/css" />
{ignore}
<script>
$(document).ready(function() {
	$('#msGallery > a').fancybox({
		beforeLoad: function() {
			var group = this.group;
			var href = this.href;
			if (group.length != 1) {return true;}

			$('#msGallery .thumbnail').each(function() {
				var elem = $(this);
				var elem_href = elem.data('image');
				if (elem_href != href) {
					group.push({
						element: elem
						,isDom: true
						,title: ''
						,type: 'image'
						,href: elem_href
					});
				}
			});
			this.group = group;
		}
	});
})
</script>
<script>
	$(document).ready(function(){
		setInterval(function(){
			var NoRealLink = $('#NoRealHref').attr('href').split('/');
			var RealLink = '/assets/images/products/[[*id]]/x800/'+NoRealLink[NoRealLink.length - 1];
			$('#NoRealHref').attr('href',RealLink);
		}, 500);
	});
</script>

<script type="text/javascript">
var _tmr = _tmr || [];
_tmr.push({
type: 'itemView',
productid: '[[*id]]',
pagetype: 'product', totalvalue: '[[+price]]',
list: '1' });
</script>
<!-- Модальное окно при добавлении в корзину -->
<script>
miniShop2.Callbacks.Cart.add.response.success = function() {
        $('.modal_cart').fadeIn("normal");
}
</script>
{/ignore}
<div class="modal_cart" style="display: none;">
    <div class="modal_content">
        <div class="closebox"><a href="#" class="close-btn deletemodal"></a></div>
        <h3><i class="fa fa-check"></i> Товар добавлен в корзину</h3>
        <div class="modal_info">
            <img src="[[+thumb]]" width="100" alt="[[+pagetitle]]"/>
            <strong>[[*pagetitle]]</strong>
            <div class="mod_price">Цена: <span class="price">[[+price]]</span> <i class="fa fa-rub"></i></div>
            <div class="clearfix"></div>
        <div class="buttons_modals">
            <a class="button_stay" href="javascript:;" onclick="jQuery('.modal_cart').hide()">Продолжить покупки</a>
            <a class="btn btn-default" href="/cart.html" style="padding: 15px 20px;">Оформить заказ</a>
        </div>
        </div>
    </div>
</div>
{include 'modals'}
</body>
</html>