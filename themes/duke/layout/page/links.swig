{% if page.data %}
{% for foo in page.data %}
{% if foo %}
    <a href="{{ foo.url }}">{{ loop.key }}</a>
{% endif %}
{% endfor %}
{% endif %}