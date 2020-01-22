
{% for post in page.posts %}
<div class="item{% if post.tags %}{% for foo in post.tags %}{% if foo %} {{ foo|first }}{% endif %}{% endfor %}{% endif %}">
    
    <a href="{{ url_for(post.path) }}">{{loop.index}} {{post.title}}</a>
{% if post.excerpt %}{% set excerpt = post.excerpt %}{% else %}{% set excerpt = post.content %}{% endif %}
    <p>{{ truncate(strip_html(excerpt), {length: 80, omission: '...'}) }}</p>
</div>{% endfor %}

