<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
{{ open_graph() }}
<title>{% if page.title %}{{ page.title }}{% else %}{{theme.title}}{% endif %}</title>
{% if is_home() %}
    {% for foo in theme.html.index.head %}
    {{ foo }}{% endfor %}
{% endif %}
<!--{{ css('https://necolas.github.io/normalize.css/8.0.1/normalize.css') }}-->
{% if theme.manifest %}<link rel="manifest" href="{{ theme.manifest }}">{% endif %}
{% for foo in theme.html.layout.head %}{{ foo }}{% endfor %}
<link rel="stylesheet"
      href="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.18.0/build/styles/default.min.css">
<script src="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.18.0/build/highlight.min.js"></script>
    {{ css('css/layout') }}