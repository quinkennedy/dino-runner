<html>
<head>
<script language='javascript' type='text/javascript' src='offline.js'></script>
<style>
.offline .runner-container {
  height: 150px;
  max-width: 600px;
  overflow: hidden;
  position: absolute;
  top: 10px;
  width: 44px;
  z-index: 2;
}

.offline .runner-canvas {
  height: 150px;
  max-width: 600px;
  opacity: 1;
  overflow: hidden;
  position: absolute;
  top: 0;
}
.offline .interstitial-wrapper {
  color: #2b2b2b;
  font-size: 1em;
  line-height: 1.55;
  margin: 100px auto 0;
  max-width: 600px;
  width: 100%;
}
</style>
<script>
var loadTimeData = undefined;
window.onload = function init(){
	new Runner('.interstitial-wrapper');
}
</script>
</head>
<body class='offline'>
	<div class='icon-offline'>
		icon-offline
	</div>
	<div class='interstitial-wrapper'>
		<div id="main-message">
			<h1 i18n-content="heading"></h1>
			<p i18n-values=".innerHTML:primaryParagraph"></p>
			<div id="buttons" class="nav-wrapper">
			<div id="control-buttons">
			<button id="reload-button"
				class="blue-button text-button"
				onclick="trackClick(this.trackingId);
				         reloadButtonClick(this.url);" 
				jsselect="reloadButton"
				jsvalues=".url:reloadUrl; .trackingId:reloadTrackingId"
				jscontent="msg"></button>
			<button id="stale-load-button"
				class="blue-button text-button"
				onclick="loadStaleButtonClick()" 
				jsselect="staleLoadButton"
				jscontent="msg" jsvalues="title:title"></button>
			</div>
		</div>
	</div>
</body>
</html>
