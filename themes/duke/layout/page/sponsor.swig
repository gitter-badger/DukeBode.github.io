{% if page.data %}
{% for foo in page.data %}
    {% if foo %}
    <p>{{loop.key}}</p>
        {% for item in foo %}
            <li><a href="{{ item.url }}">{{ loop.key }}</a></li>
        {% endfor %}
    {% endif %}
{% endfor %}
{% endif %}