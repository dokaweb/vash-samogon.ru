<header>
	<div class="holder clearfix ">
		<a href="/"><strong class="logo">Ваш Самогон!<i>Самогонные аппараты [[!+cf.city]]</i></strong></a>
		{'msMiniCart' | snippet}
		{'pdoMenu' | snippet : [
			'startId' => 0,
			'level' => 1,
			'tpl' => '@INLINE <a href="{$link}" class="header_link"><span class="icon-about"></span><u>{$menutitle}</u></a>',
			'tplOuter' => '@INLINE <ul class="tmenu">{$wrapper}</ul>',
		]}
	</div>
</header>