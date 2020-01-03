{% set title = "首页" %}
<!--
</head>
<body>
{% include "partial/header.swig" with title %}
<div id="content">Home page</div>
-->
{{page.per_page}}


{% for post in page.posts %}
<div>
    <a href="{{ url_for(post.path) }}">{{loop.index}} {{post.title}}</a>
</div>{% endfor %}

<ul>{% for fooa in theme %}
    <li>{{ loop.index }} {{ loop.key }} {{ fooa }}</li>{% endfor %}
</ul>
