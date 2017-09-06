<footer class="container-fluid">
	<div class="row">
		<div class="col-lg-8">
			{if $_modx->hasSessionContext('mgr')}
				<small>
					{set $info = $_modx->getInfo('', false)}<br>
					Время работы: {$info.totalTime}<br>
					Время запросов: {$info.totalTime}<br>
					Количество запросов: {$info.queries}
				</small>
			{/if}
{ignore}
				<!--LiveInternet counter--><script type="text/javascript"><!--
document.write("<a href='//www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t44.14;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet' "+
"border='0' width='31' height='31'><\/a>")
//--></script><!--/LiveInternet-->
<!-- begin of Top100 code -->

<script id="top100Counter" type="text/javascript" src="//counter.rambler.ru/top100.jcn?4403064"></script>
<noscript>
<a href="//top100.rambler.ru/navi/4403064/">
<img src="//counter.rambler.ru/top100.cnt?4403064" alt="Rambler's Top100" border="0" />
</a>

</noscript>
<!-- end of Top100 code -->
[[!+cf.metrika]]
<!-- Rating@Mail.ru counter -->
<script type="text/javascript">
var _tmr = window._tmr || (window._tmr = []);
_tmr.push({id: "2748640", type: "pageView", start: (new Date()).getTime()});
(function (d, w, id) {
  if (d.getElementById(id)) return;
  var ts = d.createElement("script"); ts.type = "text/javascript"; ts.async = true; ts.id = id;
  ts.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//top-fwz1.mail.ru/js/code.js";
  var f = function () {var s = d.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ts, s);};
  if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); }
})(document, window, "topmailru-code");
</script><noscript><div style="position:absolute;left:-10000px;">
<img src="//top-fwz1.mail.ru/counter?id=2748640;js=na" style="border:0;" height="1" width="1" alt="Рейтинг@Mail.ru" />
</div></noscript>
<!-- //Rating@Mail.ru counter -->
		</div>
		<div class="col-lg-4">
			<p class="">&copy;2015 - 2017 [[++site_name]]</p>
			<a href="http://dokaweb.ru/" title="Создание и продвижение сайтов">[[++cultureKey:is=`ru`:then=`Веб-студия &laquo;Докавеб&raquo;`:else=`Web-studio Dokaweb`]]</a>
		</div>
		<div class="col-lg-8">
		    &nbsp;
		</div>
	</div>
</footer>
<!-- BEGIN JIVOSITE CODE {literal} -->
<script type='text/javascript'>
(function(){ var widget_id = 'bqfg6ACpOP';var d=document;var w=window;function l(){
var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = '//code.jivosite.com/script/widget/'+widget_id; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);}if(d.readyState=='complete'){l();}else{if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})();</script>
<!-- {/literal} END JIVOSITE CODE -->
{/ignore}