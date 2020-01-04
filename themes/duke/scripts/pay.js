// 返回支付码
function paycode(code){
    let ua = navigator.userAgent
    for(i in code){
        if(ua.search(" "+i+"/")>-1)return code[i]
    }
    return "/"
}