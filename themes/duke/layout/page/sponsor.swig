{% if page.sponsor %}
    {% for foo in page.sponsor %}
        <li><a href="{{ foo.url }}">{{ loop.key }}</a></li>
    {% endfor %}
{% endif %}