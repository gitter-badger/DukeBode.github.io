<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <base target="_blank" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{% if page.title %}{{ page.title }}{% else %}{{theme.title}}{% endif %}</title>
    {{ open_graph() }}

{% if is_home() %}
    {% for foo in theme.html.index.head %}
    {{ foo }}{% endfor %}
{% endif %}
{% for foo in theme.html.layout.head %}{{ foo }}{% endfor %}
    {% if theme.manifest %}<link rel="manifest" href="{{ theme.manifest }}">{% endif %}
    <!--{{ css('https://necolas.github.io/normalize.css/8.0.1/normalize.css') }}-->
    {{ css('css/layout') }}
    <div class="nav">
<div class="home"><a href="/">首页</a></div>
{% if is_home() %}
<div class="tags">
<ul class="tag-list" itemprop="keywords">
{% for foo in site.tags %}
    <li class="tag-list-item">{{ foo|first }}</li>{% endfor %}
</ul>
</div>
{% endif %}
</div>
    {{ body }}
    {% if page.TeX %}

        <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
    {% endif %}

{% for foo in theme.html.layout.body %}
{{ foo }}
{% endfor %}
<!-- 百度主动推送 -->
<script>
(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
    }
    else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script>

</body>
</html>