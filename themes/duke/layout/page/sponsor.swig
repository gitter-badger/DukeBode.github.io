{% if page.data %}
{% for data in page.data %}
<details open class="sponsor-item">
    {% if data %}
    <summary class="sponsor-item-title"><h2>{{ loop.key }}</h2></summary>
        {% for item in data %}
            <li><a href="{{ item.url }}">{{ loop.key }}</a></li>
        {% endfor %}
    {% endif %}
</details>
{% endfor %}
{% endif %}