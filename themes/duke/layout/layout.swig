<!DOCTYPE html>
<html>
<head>
{% include "partial/head.swig" %}
</head>
<body>
    <div id="menu">
    <nav>
    <li><a href="/">首页</a></li>
    <li class="flex-auto">{% if is_home() %}
        <button id="tags" type="button" >标签</button>
    {% endif %}</li>
    <li><a href="/sponsor">赞助</a></li>
    </nav>

{% if is_home() %}
<div id="home-tags" class="tag-list">
{% for foo in site.tags %}
<li class="tag-list-item" >
<a href="#{{ foo|first }}" href="javascript:;" onclick="change(this)">{{ foo|first }}</a>
</li>{% endfor %}
</div>
{% endif %}

</div>
    {{ body }}
    {% if page.TeX %}
        <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
    {% endif %}
<div>
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
</div>
</body>
</html>