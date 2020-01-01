{{page.content}}
<a href="{{ url_for(page.prev.path) }}">{{page.prev.title}}</a>
<a href="{{ url_for(page.next.path) }}">{{page.next.title}}</a>

<script type="text/javascript">
document.write(document.referrer)

document.write(window.location.search.substr(1).split("&"))

// "MicroMessenger"
// "AlipayClient"
// "QQ"
</script>

<script src="//lib.baomitu.com/qrcode-generator/latest/qrcode.min.js"></script>