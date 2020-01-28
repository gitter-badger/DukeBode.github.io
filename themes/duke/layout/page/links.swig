{% if page.data %}
{% for foo in page.data %}
{% if foo %}
    <li><a href="{{ foo.url }}">{{ loop.key }}</a></li>
{% endif %}
{% endfor %}
{% endif %} .