
{% for post in page.posts %}
<div class="item{% if post.tags %}{% for foo in post.tags %}{% if foo %} {{ foo|first }}{% endif %}{% endfor %}{% endif %}">
    
    <h2 class="post-title"><a href="{{ url_for(post.path) }}">{{post.title}}</a></h2>
{% if post.excerpt %}{% set excerpt = post.excerpt %}{% else %}{% set excerpt = post.content %}{% endif %}
    <p>{{ truncate(strip_html(excerpt), {length: 180, omission: '...'}) }}</p>
</div>{% endfor %}

<hr>
<footer>
<ul>
{% for page in site.pages %}
{% if page.title %}
    <li><a href="{{ url_for(page.path) }}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
</ul>

{% if site.data.donate %}
<ul>
    {% for foo in site.data.donate %}
    {{  foo }}
    {% endfor %}
</ul>
{% else %}
{% endif %}
</footer>


