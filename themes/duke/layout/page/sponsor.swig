{% if page.data %}
{% for data in page.data %}
<details open class="sponsor-item">
    {% if data %}
    <summary class="sponsor-item-title">{{ loop.key }}</summary>
        {% for item in data %}
            <li><a href="{{ item.url }}">{{ loop.key }}</a></li>
        {% endfor %}
    {% endif %}
</details>
{% endfor %}
{% endif %}