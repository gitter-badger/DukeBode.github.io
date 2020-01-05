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
    .item{

    }
</style>
{{ body }}
<script src="">
<script type="text/javascript">
// if ('serviceWorker' in navigator) {
//   navigator.serviceWorker
//     .register("/service-worker.js", {scope: '/'})
//     .then(registration => console.log('SW Registration Success！Scope: ', registration.scope))
//     .catch(err => console.log('SW Registration Failed! Error: ', err));
// }
// This is the "Offline page" service worker

// Add this below content to your HTML page, or add the js file to your page at the very top to register service worker

// Check compatibility for the browser we're running this in
if ("serviceWorker" in navigator) {
  if (navigator.serviceWorker.controller) {
    console.log("[PWA Builder] active service worker found, no need to register");
  } else {
    // Register the service worker
    navigator.serviceWorker
      .register("pwabuilder-sw.js", {
        scope: "./"
      })
      .then(function (reg) {
        console.log("[PWA Builder] Service worker has been registered for scope: " + reg.scope);
      });
  }
}
</script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
</body>
</html>