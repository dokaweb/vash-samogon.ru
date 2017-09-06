<div class="col-xs-5">
    <div class="sidebar-section">
		<div class="sidebar-categories-wrapper">
			<div class="sidebar-title">
				<h3>Каталог</h3>
			</div>
				{'pdoMenu' | snippet : [
					'parents' => 3,
					'tplOuter' => 'catalog_side_Outer_tpl',
					'tpl' => 'catalog_side_tpl',
				]}
		</div>	
	</div>
	 <div class="sidebar-section">
		<div class="sidebar-categories-wrapper">
			<div class="sidebar-title">
				<h3>Поиск по сайту</h3>
			</div>
				{'!mSearchForm' | snippet : [
					'pageId' => 415,
					'element' => 'msProducts',
					'fields' => 'pagetitle',
				]}
		</div>	
	</div>
     <div class="dost">
     	<img src="/assets/theme/img/dostavka-side.jpg" class="img-responsive">
     </div>
     <div class="sidebar-section">
		<div class="sidebar-categories-wrapper">
			<div class="sidebar-title">
				<h3>Последние новости</h3>
			</div>
				<div class="news_last">
					{'pdoResources' | snippet : [
						'parents' => 419,
						'depth' => 0,
						'tpl' => '@INLINE <div class="row news_item"><div class="col-xs-20"><span class="brown">{$publishedon | dateago}</span></div><div class="col-xs-20"><h4>{$pagetitle}</h4></div><div class="col-xs-20 intro_news">{$introtext | truncate : 100}</div><div class="col-xs-20"><a href="{$id | url}">Читать полностью...</a></div></div>',
						'limit' => 3,
						'includeTVs' => 'image',
						'sortby' => '{"publishedon":"DESC","createdon":"DESC"}',
					]}
			</div>
		</div>
	</div>
</div>