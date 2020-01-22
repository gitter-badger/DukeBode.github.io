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


function change(that){
    // console.log(this.innerHTML)
    console.log(that.innerHTML)
    document.getElementById("tags").innerHTML=that.innerHTML
    if(document.getElementById("home-tags")){
        document.getElementById("home-tags").style.display = "none";

    }
    // $('')
    // document.getElementsByClassName("item").style.display = "none";
    document.getElementsByClassName(that.innerHTML)[0].style.display = "none";
    var aa = document.getElementsByClassName("item");//获取到的是一个类数组
    for(var i=0;i<aa.length;i++){
      aa[i].style.display = "none"
    }
    var bb = document.getElementsByClassName(that.innerHTML);//获取到的是一个类数组
    for(var i=0;i<bb.length;i++){
      bb[i].style.display = "block"
    }
    // window.location.href=window.location.href+that.innerHTML;

    // console.log(this.h)

}

window.addEventListener('hashchange',function(){

    console.log(111);

});

window.onclick=function(){
    console.log("1")
}

window.onload = function () {

    
    // var i=0;
    // console.log(i)
    // var temp=
    setInterval(function(){
        // i++;
        console.log(decodeURI(window.location.hash.substr(1)))
    },1000)

    document.getElementById("home-tags").style.display = "none";
    document.getElementById('tags').onclick = function () {
        let t = document.getElementById("home-tags");
        if (t.style.display == `none`) {
            t.style.display = `flex`;
        } else {
            t.style.display = `none`;
        }

        // clock = setInterval(function(){
        //     h = decodeURI(window.location.hash.substr(1));
        //     let t = document.getElementById("tags");
        //     if (h != "" && h != t.innerHTML) {
        //         t.innerHTML = h;
        //         document.getElementById("home-tags").style.display = "none";
        //         clearInterval(clock);
        //     }
        // }, 500);
    }
    // document.getElementsByClassName('tag-list-item').children[1].onclick = function () {
    //     console.log("1")
    //     // let t = document.getElementById("home-tags");
    //     // if (t.style.display == `none`) {
    //     //     t.style.display = `flex`;
    //     // } else {
    //     //     t.style.display = `none`;
    //     // }
    //     document.getElementById('tags').style.display='none'
    //     document.getElementById("home-tags").innerHTML=this.innerHTML;


        // clock = setInterval(bbb(), 500);
    // }
}