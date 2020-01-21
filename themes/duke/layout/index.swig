
{% for post in page.posts %}
<div class="item">
    <a href="{{ url_for(post.path) }}">{{loop.index}} {{post.title}}</a>
{% if post.excerpt %}{% set excerpt = post.excerpt %}{% else %}{% set excerpt = post.content %}{% endif %}
    <p>{{ truncate(strip_html(excerpt), {length: 80, omission: '...'}) }}</p>
</div>{% endfor %}

