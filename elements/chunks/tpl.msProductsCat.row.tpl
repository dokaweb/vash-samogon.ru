<!-- Блок товара -->
<form method="post" class="ms2_form">
	<input type="hidden" name="id" value="[[+id]]">
	<input type="hidden" name="count" value="1">
	<input type="hidden" name="options" value="[]">
<div class="item" itemtype="http://schema.org/Product" itemprop="itemListElement" itemscope="">
	<div class="itemInfo">
		<meta itemprop="image" content="[[+thumb:default=`[[++assets_url]]components/minishop2/img/web/ms2_small.png`]]">
		<noindex>
			<div class="itemPicture">
				<a class="link" href="[[~[[+id]]]]">
					<!--<div class="shield">
						<img src="/upload/lable/rsr.png">
					</div>-->
					<img src="[[+thumb:default=`[[++assets_url]]components/minishop2/img/web/ms2_small.png`]]" alt="{$pagetitle|replace:'"':""}" title="{$pagetitle|replace:'"':""}">
				</a>
			</div>
		</noindex>
		<div class="itemDescription">
			<div class="itemTitle" itemprop="name"><a itemprop="url" href="[[~[[+id]]]]">[[+pagetitle]]</a></div>
			<div class="itemDetail">
				<div class="description" itemprop="description">
					[[+introtext:ellipsis=`300`]]
				</div>
			</div>
		</div>
		<div class="closer"></div>
	</div>
	<div class="buyBox buyBoxCorners" style="display: block;">
		<noindex><div class="actionBlock"></div></noindex>
		<div class="priceContainer" itemtype="http://schema.org/Offer" itemprop="offers" itemscope="">
			<meta itemprop="priceCurrency" content="RUB">
			<div class="actionPriceBigDiscount">
				<span class="discountPrice itemPrice">[[+price]] <i class="fa fa-rub"></i><span itemprop="price" class="unifiedHidden" id="pr">[[+price]]</span></span>
				<span itemprop="price" class="unifiedHidden">[[+price]]</span>
			</div>
		<noindex>
			<button class="btn btn-default btn-submit" type="submit" data-pid="[[+id]]" data-pname="[[+pagetitle:stripString=`"`]]" data-pimg="[[+thumb]]" data-pprice="[[+price]]" name="ms2_action" value="cart/add" onclick="yaCounter33636119.reachGoal('zakaz'); return true;"><i class="glyphicon glyphicon-shopping-cart"></i> [[%ms2_frontend_add_to_cart]]</button>
		<div class="ILike">
			{('!xLike' | snippet)}
		</div>
		<div class="closer mbot15"></div>
		</noindex>
		[[-+price:stripString=` `:ge=`5000`:then=`
		<div class="technical_ico"><img src="/assets/theme/img/delivery_ico.png" class="tool"> - Бесплатная доставка</div>
		`:else=``]]
		[[+popular]]
		</div>
	</div>
	<div class="closer"></div>
</div>
</form>
<!-- Конец блока товара -->

<!--minishop2_suhoparnik <div><b>Наличие сухопарника:</b> Да</div> -->
<!--minishop2_termometr <div><b>Наличие термометра:</b> Да</div> -->
<!--minishop2_popular <div class="technical_ico"><img src="/assets/theme/img/hit_ico.png"> - Хит продаж</div> -->
<!--minishop2_new <i class="glyphicon glyphicon-flag" title="[[%ms2_frontend_new]]"></i>-->
<!--minishop2_favorite <i class="glyphicon glyphicon-bookmark" title="[[%ms2_frontend_favorite]]"></i>-->
<!--minishop2_old_price <span class="old_price">[[+old_price]] [[%ms2_frontend_currency]]</span>-->