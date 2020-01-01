{% set title = "首页" %}
<style>
body{
    max-width: 10vh;
}
</style>
</head>
<body>
{% include "partial/header.swig" with title %}
<div id="content">Home page</div>

{{page.per_page}}

<ul>
    {% for post in page.posts %}
    <li>{{loop.index}} {{post.title}}</li>
    {% endfor %}
</ul>

{% if page.total > 1 %}
    {{ page.next_link }}
{% endif %}
<ul> 
    {% for foo in config %}
    
    <li>{{ loop.index }} {{ loop.key }} {{ foo }}</li>
    {% endfor %}
</ul>