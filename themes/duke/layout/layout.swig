<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <base target="_blank" />
    {% if theme.manifest %}<link rel="manifest" href="{{ theme.manifest }}">{% endif %}
<style>
    html{
        max-width: 100vh;
        margin: auto;
    }
    img{
        max-width:100%;
        align:center;
    }
    .highlight {
        background: #2d2d2d;
        margin:0;
        padding: 15px 20px;
        overflow: auto;
        color: #ccc;
    }
</style>
{{ body }}
<script type="text/javascript">
if ('serviceWorker' in navigator) {
  navigator.serviceWorker
    .register("/service-worker.js", {scope: '/'})
    .then(registration => console.log('SW Registration Success！Scope: ', registration.scope))
    .catch(err => console.log('SW Registration Failed! Error: ', err));
}
</script>
</body>
</html>