{% if page.data %}
{% for foo in page.data %}
<details>
    {% if foo %}
    <summary>{{loop.key}}</summary>
        {% for item in foo %}
            <li><a href="{{ item.url }}">{{ loop.key }}</a></li>
        {% endfor %}
    {% endif %}
</details>
{% endfor %}
{% endif %}