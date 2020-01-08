{% if page.welfare %}
    {% for foo in page.welfare %}
        <li><a href="{{ foo.url }}">{{ foo.title }}</a></li>
    {% endfor %}
{% endif %}