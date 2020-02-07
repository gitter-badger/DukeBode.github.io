"use strict";
// 返回支付码
function paycode(code, Default = "/") {
    let ua = navigator.userAgent
    for (i in code) {
        if (ua.search(` ${i}/`) > -1) return code[i]
    }
    return Default
}
// 返回 url 参数
function getUrlParam() {
    let h = decodeURI(window.location.hash.substr(1)).split('&');
    var pair = {}
    for (let i = 0; i < h.length; i++) {
        tmp = h[i].split("=");
        pair[tmp[0]] = tmp[1];
    }
    return pair
}

function change(that) {
    document.getElementById("tags").innerHTML = that.innerHTML
    document.getElementById("home-tags").style.display = "none";
    var aa = document.getElementsByClassName("item"); //获取到的是一个类数组
    for (var i = 0; i < aa.length; i++) {
        aa[i].style.display = "none"
    }
    var bb = document.getElementsByClassName(that.innerHTML); //获取到的是一个类数组
    for (var i = 0; i < bb.length; i++) {
        bb[i].style.display = "block"
    }
}
// class Hash{
//     constructor(){
//     }
//     get D()
// }
var hashdata;
window.addEventListener('hashchange', function() {
    console.log(decodeURI(window.location.hash.substr(1)));
});

window.onclick = function() {}

window.onload = function() {
    let h = decodeURI(window.location.hash.substr(1));
    let t = document.getElementById("tags");
    if (h != "" && h != t.innerHTML) {
        t.innerHTML = h;
    } else {
        h = "item";
    }
    let bb = document.getElementsByClassName(h); //获取到的是一个类数组
    for (var i = 0; i < bb.length; i++) {
        bb[i].style.display = "block";
    }
    document.getElementById('tags').onclick = function() {
        document.getElementById("home-tags").style.display = `flex`;
    }
}