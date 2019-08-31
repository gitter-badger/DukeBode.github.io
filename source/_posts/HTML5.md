﻿---
title: HTML5
author: Duke
authorURL: http://weibo.com/newggbode
---

```html
<!> 跑马灯
<marquee>...</marquee>普通卷动
<marquee behavior=slide>...</marquee>滑动
<marquee behavior=scroll>...</marquee>预设卷动
<marquee behavior=alternate>...</marquee>来回卷动
<marquee direction=down>...</marquee>向下卷动
<marquee direction=up>...</marquee>向上卷动
<marquee direction=right></marquee>向右卷动
<marquee direction=’left’></marquee>向左卷动


<marquee loop=2>...</marquee>卷动次数
<marquee width=180>...</marquee>设定宽度
<marquee height=30>...</marquee>设定高度
<marquee bgcolor=FF0000>...</marquee>设定背景颜色
<marquee scrollamount=30>...</marquee>设定滚动速度
<marquee scrolldelay=300>...</marquee>设定卷动时间
<marquee onmouseover="this.stop()">...</marquee>鼠标经过上面时停止滚动
<marquee onmouseover="this.start()">...</marquee>鼠标离开时开始滚动
<!>字体效果
<h1>...</h1>标题字(最大)
<h6>...</h6>标题字(最小)
<b>...粗体字
<strong>...</strong>粗体字(强调) （同上效果略同）
<i>...</i>斜体字
<em>...</em>斜体字(强调)
<dfn>...</dfn>斜体字(表示定义)
<u>...</u>底线
<ins>...</ins>底线(表示插入文字)
<strike>...</strike>横线
<s>...</s>删除线
<del>...</del>删除线(表示删除)
<kbd>...</kbd>键盘文字
<tt>...</tt> 打字体
<xmp>...</xmp>固定宽度字体(在文件中空白、换行、定位功能有效)
<plaintext>...</plaintext>固定宽度字体(不执行标记符号)
<listing>...</listing> 固定宽度小字体
<font color=00ff00>...</font>字体颜色
<font size=1>...</font>最小字体
<font style =’font-size:100 px’>...</font>无限增大
区断标记
<hr>水平线
<hr size=’9’>水平线(设定大小)
<hr width=’80%’>水平线(设定宽度)
<hr color=’ff0000’>水平线(设定颜色)
<br>(换行)
<nobr>...</nobr>水域(不换行)
...

水域(段落)

<center>...</center>置中
<!>连结格式
<base href=位址>(预设好连结路径)
<a href=位址></a>外部连结
<a href=位址 target=’_blank’></a>外部连结(另开新视窗)
<a href=位址 target=’_top’></a>外部连结(全视窗连结)
<a href=位址 target=’页框名’></a>外部连结(在指定页框连结)
<!>贴图/音乐
<img src=图片位址>贴图
<img src=图片位址 width=’180’>设定图片宽度
<img src=图片位址 height=’30’>设定图片高度
<img src=图片位址 alt=’提示文字’>设定图片提示文字
<img src=图片位址’ border=’1’>设定图片边框
<bgsound src=MID音乐档位址>背景音乐设定
<!>表格语法
<table aling=left>...</table>表格位置,置左
<table aling=center>...</table>表格位置,置中
<table background=图片路径>...</table>背景图片的URL=就是路径网址
<table border=边框大小>...</table>设定表格边框大小(使用数字)
<table bgcolor=颜色码>...</table>设定表格的背景颜色
<table borderclor=颜色码>...</table>设定表格边框的颜色
<table borderclordark=颜色码>...</table>设定表格暗边框的颜色
<table borderclorlight=颜色码>...</table>设定表格亮边框的颜色
<table cellpadding=参数>...</table>指定内容与格线之间的间距(使用数字)
<table cellspacing=参数>...</table>指定格线与格线之间的距离(使用数字)
<table cols=参数>...</table>指定表格的栏数
<table frame=参数>...</table>设定表格外框线的显示方式
<table width=宽度>...</table>指定表格的宽度大小(使用数字)
<table height=高度>...</table>指定表格的高度大小(使用数字)
<td colspan=参数>...</td>指定储存格合并栏的栏数(使用数字)
<td rowspan=参数>...</td>指定储存格合并列的列数(使用数字)
分割视窗
<frameset cols="20%,*">左右分割,将左边框架分割大小为20%右边框架的大小浏览器会自动调整
<frameset rows="20%,*">上下分割,将上面框架分割大小为20%下面框架的大小浏览器会自动调整
<frameset cols="20%,*">分割左右两个框架
<frameset cols="20%,*,20%">分割左中右三个框架
<分割上下两个框架
<frameset rows="20%,*,20%">分割上中下三个框架
属性：
cols 垂直切割窗口（如左右分割两个窗口）接受整数值，百分数，*（*代表占用余下空间）数值的个数代表分成的部分数目，要以逗号分隔。例：cols="30,*,50%"可以 切成三个视窗，第一部分是30像素（pixels）为绝对分割，第二部分是当分配完第一和第三视图后剩下的空间，第三部分则占整个窗口的50%宽度，为相对分割。
rows 就是横向切割，将窗口上下分开，数值设置同上。
以上两属性尽量不要在同一个<frameset>标记中，因为王井（netscape）不支持，尽量采用多重分割。
frameborder 设置框架的边框，其值有0不要边框，1要边框。
border 设置框架边框厚度
framespacing 表示框架与框架间保留空白的距离
frame 元素（单标签）
语法格式：
<frame name="" src="url" scrolling="yes/no" noresize>
属性：
name 框架名称，指定框架来做连接的目标窗口。
src 框架中要显示的网页文当url地址，每个个框架要对应一个html文挡。
scrolling 是否显示滚动条，yes/no,auto是自动。
noresize 设置不让使用者改变这个框架的大小，
noframe元素
指定当使用了框架的页面在不支持框架的浏览器中打开时显示的信息
语法格式：
<noframe>
......
</noframe>
表单<form></form>
语法格式：
<form action="url" method="get/post">
....
<input type=submit><input type=reset>
</form>
method有两种提交方式get,post
action 是指明处理该表单的程序位置，这样表单所填的资料才能传给cgi做处里，可设定此参数为action="mailto:lwr8494@163.com" 这样此表单所填的资料将会发送到这个邮箱地址。
method 是指传送信息给cgi等网络程序的方式。可选post方法， get方法，post方法容许传送大量信息。get方法只接受低于1k的信息。
申请表单用的是post搜索引擎用的是get
 
<! - - ... - -> 注解
<A HREF TARGET> 指定超连结的分割视窗
<A HREF=#锚的名称> 指定锚名称的超连结
<A HREF> 指定超连结
<A NAME=锚的名称> 被连结点的名称
<ADDRESS>....</ADDRESS> 用来显示电子邮箱地址
<B> 粗体字
<BASE TARGET> 指定超连结的分割视窗
<BASEFONT SIZE> 更改预设字形大小
<BGSOUND SRC> 加入背景音乐
<BIG> 显示大字体
<BLINK> 闪烁的文字
<BODY TEXT LINK VLINK> 设定文字颜色
<BODY> 显示本文
<BR> 换行
<CAPTION ALIGN> 设定表格标题位置
<CAPTION>...</CAPTION> 为表格加上标题
<CENTER> 向中对齐
<CITE>...<CITE> 用於引经据典的文字
<CODE>...</CODE> 用於列出一段程式码
<COMMENT>...</COMMENT> 加上注解
<DD> 设定定义列表的项目解说
<DFN>...</DFN> 显示"定义"文字
<DIR>...</DIR> 列表文字标签
<DL>...</DL> 设定定义列表的标签
<DT> 设定定义列表的项目
<EM> 强调之用
<FONT FACE> 任意指定所用的字形
<FONT SIZE> 设定字体大小
<FORM ACTION> 设定户动式表单的处理方式
<FORM METHOD> 设定户动式表单之资料传送方式
<FRame MARGINHEIGHT> 设定视窗的上下边界
<FRame MARGINWIDTH> 设定视窗的左右边界
<FRame NAME> 为分割视窗命名
<FRame NORESIZE> 锁住分割视窗的大小
<FRame SCROLLING> 设定分割视窗的卷轴
<FRame SRC> 将HTML档加入视窗
<FRameSET COLS> 将视窗分割成左右的子视窗
<FRameSET ROWS> 将视窗分割成上下的子视窗
<FRameSET>...</FRameSET> 划分分割视窗
<H1>~<H6> 设定文字大小
<HEAD> 标示文件资讯
<HR> 加上分格线
<HTML> 文件的开始与结束
<I> 斜体字
<IMG ALIGN> 调整图形影像的位置
<IMG ALT> 为你的图形影像加注
<IMG DYNSRC LOOP> 加入影片
<IMG HEIGHT WIDTH> 插入图片并预设图形大小
<IMG HSPACE> 插入图片并预设图形的左右边界
<IMG LOWSRC> 预载图片功能
<IMG SRC BORDER> 设定图片边界
<IMG SRC> 插入图片
<IMG VSPACE> 插入图片并预设图形的上下边界
<INPUT TYPE NAME value> 在表单中加入输入栏位
<ISINDEX> 定义查询用表单
<KBD>...</KBD> 表示使用者输入文字
<LI TYPE>...</LI> 列表的项目 ( 可指定符号 )
<MARQUEE> 跑马灯效果
<MENU>...</MENU> 条列文字标签
<meta NAME="REFRESH" CONTENT URL> 自动更新文件内容
<MULTIPLE> 可同时选择多项的列表栏
<NOFRame> 定义不出现分割视窗的文字
<OL>...</OL> 有序号的列表
<OPTION> 定义表单中列表栏的项目
<P ALIGN> 设定对齐方向
<P> 分段
<PERSON>...</PERSON> 显示人名
<PRE> 使用原有排列
<SAMP>...</SAMP> 用於引用字
<select >...</select > 在表单中定义列表栏
<SMALL> 显示小字体
<STRIKE> 文字加横线
<STRONG> 用於加强语气
<SUB> 下标字
<SUP> 上标字
<TABLE BORDER=n> 调整表格的宽线高度
<TABLE CELLPADDING> 调整资料栏位之边界
<TABLE CELLSPACING> 调整表格线的宽度
<TABLE HEIGHT> 调整表格的高度
<TABLE WIDTH> 调整表格的宽度
<TABLE>...</TABLE> 产生表格的标签
<TD ALIGN> 调整表格栏位之左右对齐
<TD BGCOLOR> 设定表格栏位之背景颜色
<TD COLSPAN ROWSPAN> 表格栏位的合并
<TD NOWRAP> 设定表格栏位不换行
<TD VALIGN> 调整表格栏位之上下对齐
<TD WIDTH> 调整表格栏位宽度
<TD>...</TD> 定义表格的资料栏位
<TEXTAREA NAME ROWS COLS> 表单中加入多少列的文字输入栏
<TEXTAREA WRAP> 决定文字输入栏是自动否换行
<TH>...</TH> 定义表格的标头栏位
<TITLE> 文件标题
<TR>...</TR> 定义表格美一行
<TT> 打字机字体
<U> 文字加底线
<UL TYPE>...</UL> 无序号的列表 ( 可指定符号 )
<var>...</var> 用於显示变数
BlockQuotc文本缩进
表示颜色的有三种方式；
1，16进制颜色代码
语法：#RRGGBB
例：<font color="#ff0000">红色</font>
2，10进制RGB码
语法：RGB（RRR，GGG，BBB）
例：<font color="rgb(255,000,000)">红色</font>
3,直接用颜色的英文名称
例：<font color="red">红色</font>
<body>.....</body>属性可分为三种：
1，背景属性
包括：bgcolor,background
2,文字属性：
包括：text,link,alink,vlink,
3,留白属性：
其中分为：leftmargin,topmargin
.bgcolor背景色
语法格式：<body bgcolor="#ff0000">
.background背景图案。
语法格式：<body background="url">
.text文本颜色（非连接文字颜色）
.link连接文字颜色（可连接文字颜色）
.alink活动连接文字颜色（正被点击的可连接文字的颜色）
.vlink已访问连接文字颜色）（已经点击访问过的可连接文字的颜色）
语法格式：<body text="color" link="color" alink="color" vlink="color">
.leftmargin 页面左侧的留白距离
.topmargin 页面顶部的留白距离
语法格式：<body leftmargin="value" topmargin="value">
注：value为长度值为数字
align 属性
语法：<h2 align="?">文字</h2>
其属性有三种：left靠左,center居中,right靠右
〈p〉
为段落标记，可利用以上属性对整个段落进行设置

〈br>为换行标记
<nobr></nobr>为不换行标记 放在文字两边即可
例：<body>
<h3>江南逢李龟年</h3>

歧王宅里寻常见<br>

催九堂前几度闻<br>
正是江南好风景<br>
落花时节又逢君

</body>
预格式化：
<pre>......</pre> 浏览是效果和编写是效果格式一样
列表
1无序列表又称符号列表
语法格式：
<ul type="">type的属性可选直disc实心圆点,clrcle空心圆点,square实心方框
<li>文字</li>
<li>文字</li>
</ul>
2有序列表
语法格式：
<ol type="?" start"?">
<li>文字</li>
<li>文字</li>
</ol>
type的值是编号字符可选的有1...,a...,A...,i... ,I...
start为起始值例：如果start为3是那么将从3开始，而且必须是数字。
3定义列表
<dl>定义列表标记
<dt>标示定义条目
<dd>标示定义内容
语法格式：
<dl>
<dt>文字</dt>
<dd>文字内容</dd>
</dl>
连接和图像
语法格式：
<a href="url" name="?" target="?" title="?">....</a>
属性：href 连接目标 值可以是url地址也可以是连接锚点
<a href="url">...</a>或者
<a href="锚点">...</a>
name 连接名称
语法格式：<a name="锚点名称">...</a>
例：<a name="abcdcf">...</a>
连接到该锚点的连接则应是：
<a name="#abcdef">....</a>
target目标窗口语法格式：
<a href="url"target="_blank|_self|_farent|_top|windowname">....</a>
-blank打开新窗口
_self当前窗口打开
一下两个仅在框架叶面中应用
_parent当前窗口的父级窗口（上一级）打开
_top在最高一级的窗口打开
windowname已命名的窗口或框架中打开连接
title连接提示
<a href="http://www.jcwcn.com" title="打开中国教程网的首页">中国教程网</a>
图像<img> 语法格式：
<img src="url" alt="?" width="?" height="?" border="?" align="?">
border属性定义图片边框的宽度，默认值为0
align属性设置图片旁边文字的位置
语法格式：<img src="" align"">
可选值有：
top图片和文字顶部对齐
middle图片和文字居中对齐
bottom图片和文字底边对齐（默认）
left图片居左对齐，文字沿图片绕排
right图片居右对齐，文字沿图片绕排
absmiddle图片对齐到目前文字行绝对中央
absbottom图片对齐到目前文字行绝对底部
文字的排版
不换行空白标记
font元素
语法格式：
<font face="字体名称" size="字体大小" color="字体颜色">
字体大小可选值为1——7，默认为3
例：〈font face="黑体" size="4" color="#ff00ff">....</font>
水平线<hr>
语法格式：<hr width="宽度" align="对齐方式默认居中center" size="水平线厚度默认为2" color="颜色" noshade>
noshade无阴影，既实线
层〈div><span>两种元素
<div>是块级元素，和段落元素

相似，不同的是两个<div>元素之间不会产生两个

元素之间的空行，

<span>是行内元素，可以定义段落中部分文字的属性
语法格式：
<div align="" style="">...</div>
align设置层中元素的水平对齐方式
stule设置元素应用css规范的属性
<div>兼容性比<span>要好一点，最好使用<div>
表格语法格式：
<table width="" bgcolor="" background="" border="" cellspacing="" cellpadding="">
<tr>...<td>....</td>....</tr>
</table>
border边框宽度默认值为0，既没有边框
cellspacing表格中单元格的边距大小，默认值为两个像素
cellpadding表格中单元格之间的间距大小，默认值为两个像素
tr元素
语法格式：
<tr align="" bgcolor="">....</tr>
align属性对齐方式可选值如下：left,center,tight,默认为left
bgcolor指定该行的背景颜色
td元素
语法格式：
<td width="宽度" height="高度" align="水平对齐方式" valign="垂直对齐方式" bgcolor="" background="" rowspan="单元格的行跨度" colapan="单元格的列跨度">.....</td>
align属性的可选值有：left,center,right
valign属性的可选值有：top,middle,bottom
rowspan和colapan跨行和跨列的数量，默认为1
input元素 语法格式：
<input type="">
type属性的可选值有：
text 单行文本框
属性：name 文本框名称
value 文本框的初始值
size 文本框的长度
maxlength 可输入字符串最大的长度
radio 单选框
属性：name 单选框名称
value 内部值
checked 默认选定
checkbox 复选框
属性：name 复选框名称
value 内部值
checked 默认选定
reset 重置按钮
submit 确定按钮
属性：name 按钮名称
value 显示在按钮上的文字
password 密码框
属性与文本框的属性完全相同
file 文件域
属性：name文件域名称
size 文件域的长度
maxlength 文件域可接受的字符数量的上限
hidden 隐藏域
属性：name 隐藏域名称
value 内定值
image 图片域
属性：name 所要代表的按钮，可以是submit,reset,或其他.
src 按钮图片的url 地址
列表框<select>
语法格式：
<select>
.....
<option>....</option>
.....
</select>
select元素
语法格式：<select name="" size=""multiple></select>
name 指定列表框的名字
size 指定列表框显示列表项的条数，如果指定了该参数，select元素是个列表，否则是一个下拉列表框
multiple 指定了这个参数，则表示该列表框可选择多项，否则只可选择一项
option属性
语法格式：<option value="" selected></option>
value 该列表项的值
selected 如果设定了这个参数，默认为选定这一项
多行文本框<textarea>
<textarea name="" cols="" rows="" wrap="off/physical/virtual"></textarea>
属性：
name文本框的名称
cols文本框的宽度
rows文本框的高度
wrap文本框的折行方式可选值有：
off不保存换行信息
physical强迫浏览器在发送信息到web服务器端时必须将多行文本框的文字一行一行的送出，
virtual送出连续成串的字除非使用者按回车。
css 层叠样式表
引入层叠样式表的方法包括：
外联式样式表
例：<head>
<link rel="stylesheet" href="/css/default.css">
</head>
<body>
....
</body>
</html>
属性：rel 用来说明<link>元素在这里要完成的任务是连接一个独立的css文件。而href属性给出了所要连接css文件的url地址
内嵌式样式表：
例：<html>
<head>
<style type="text/css">
<!--
td{font:9pt;color:red}
.font105{font:10.5pt;color:blue}
-->
</head>
<body>....</body>
</html>
元素内定
格式：<p style="font-size:10.5pt">
导入式样式表
〈html>
<head>
<style type="text/css">
<!--
@import url(css/home.css);
-->
<body>
....
</body>
</html>
css的优先级
越接近目标的样式定义优先级越高，高优先级样式将继承低优先级样式的未重叠定义但覆盖重叠的定义
如果4种样式表对同一元素定义了不同的样式，那么他们的优先级顺序从高到低是，元素内定，内嵌样式表，导入样式表，外联样式表。
css结构
例：td{font-size:10.5pt;color:#666666}
css样式包含两个基础部分，
选择符<td>和声明{font-size:10.5pt;color:#666666}
声明也有两部分组成：
属性font-size,color和值10.5pt,#666666
选择符分为6种
1元素选择符
当页面上多个元素的样式相同时，可以将多个元素放在一起定义，中间以逗号分开 例：td,p,li,input,select{font-size:12px;}
2class(类)选择符
例：〈head>
<title>.....</title>
<style type="text/css">
<!--
.red{font-size:10.5pt;color:#ff0000}
-->
</head>
<body bgcolor="#ffffff">
<p class="red">士大夫井冈山地方官


九连环离开计划


</body>
还有一种方法就是限定可以应用它的页面元素
例：〈head>
<title>.....</title>
<style type="text/css">
<!--
h1.red{color:#ff0000}
-->
</head>
<body bgcolor="#ffffff">
<p class="red">士大夫井冈山地方官

<h1 class="red">九连环离开计划</h1>
</body>
3 id选择符
与class选择附类似，只是把'.'换成'#'
例：<body>
<head>
<style type="text/css">
<!--
#select{font-size:18px;color:#0000ff}
-->
</head>
<body>
<table width="250" border="1" height="50">
<tr>
<td align="center" id="select">id选择符</td>
</tr>
</table>
</body>
</html>
我们看到在调用ID选择附时与CLASS选择附类似，只是将class=""换成了id=""，方便页面脚本语言的调用
关联选择符
<body>
<head>
<style type="text/css">
<!--
td p{font-size:18px;color:#0000ff}
-->
</head>
<body>
<table width="250" border="1" height="50">
<tr>
<td align="center">

关联选择符

</td>

</tr>
</table>

关联选择符


</body>
</html>
我们设定了在元素中<td>的元素

所包含文字的样式，只有在两个条件都满足是，样式在会起作用，

伪类选择符
是只能用在css选择符里，而不能用在html代码中的选择符
例：
〈html>
<head>
<style type="text/css">
<!--
a:link{color:#000000}
a:visited{color:#cccccc}
a:hover{color:#ff0000}
a:active{color:#ooooff}
-->
</head>
<body>
<a href="#">关联选择符</a>
<a href="#">关联选择符</a>
<a href="#">关联选择符</a>
<a href="#">关联选择符</a>
〈/body>
</html>
正确的顺序是a:link\a:visited\a:hover否则会引起页面上连接颜色混乱
伪元素选择符
与伪类选择符定义类似，目前被大多数浏览器支持的有两个：首行伪元素（first-line）和首字符伪元素(first-letter)是用来实现首行大写和首行下沉效果的
例：首行
<html>
<head>
<!--
p:first-line{color:red;font-size:20pt}
-->
</hesd>
<body>
dfgsadfgsdfgsdfgsdfgsdfgsdfgsdfgsdfgsdfgsdf...


</body>
</html>
长度随浏览器窗口大小而改变
首字
<html>
<head>
<!--
p:first-letter{color:red;font-size:50pt;float:left;}
-->
</hesd>
<body>
dfgsadfgsdfgsdfgsdfgsdfgsdfgsdfgsdfgsdfgsdf...


</body>
</html>
以上两种都只能应用于块状元素上
css规则
1.继承
例：<html>
<head>
<style type="text/css">
<!--
td{font-size:12pt}
p{color:red}
-->
</hesd>
<body>
<table width="300" border="1" height="150">
<tr>
<td align="center">
css
规则


</td>
</table>
</body>
</html>

为最高级<td>次一级两种css用在一个属性元素上，相同的覆盖，不同的继承，

2.组合
例:td{font-size:12pt}
p1{font-size:12pt}
组合后
td,.p1{font-size:12pt}
3.层叠
在样式里定义过后，在表格属性中又定义一次
<html>
<head>
<style type="text/css">
<!--
red{color:#ff0000 limportant}
-->
</hesd>
<body>
<table width="300" border="1" height="150"><tr>
<td align="center" style="color:#0000ff" class="red">决撒地方官</td>
</tr>
</table>
</body>
</html>
css单位
分四大类：
1 长度单位
数值可以是整数，小数，正数，负数，0，后加单位（负值不要轻易使用）
换算关系：
1in(英寸)=6pc(派)
1in(英寸)=72pt(磅)
1in(英寸)=2.54(厘米)
1cm(厘米)=10mm(毫米)
1cm(厘米)=0.3937(英寸)
1pt(磅)=1/72in(英寸)=0.2478mm(毫米)
1pc(派)=1/6in(英寸)=我国新四号铅字的尺寸
2 百分比单位
3 颜色单位
4 url单位
div属性
color : #999999   文字颜色
font-family : 宋体 文字字型
font-size : 10pt 文字大小
font-style:itelic 文字斜体育
font-variant:small-caps 小字体
letter-spacing : 1pt 文字间距
line-height : 200% 设定行高
font-weight:bold 文字粗体
vertical-align:sub 下标字
vertical-align:super 上标字
text-decoration:line-through 加?h除线
text-decoration:overline 加顶线
text-decoration:underline 加底线
text-decoration:none ?h除连接底线
text-transform : capitalize 首字大写
text-transform : uppercase 英文大写
text-transform : lowercase 英文写
text-align:right 文字*右对齐
text-align:left 文字*左对齐
text-align:center 文字置中对齐
这些是一些简单的文字效果，可以应用到css的页面中。　
背景
background-color:black 背景颜色
background-image : none 背景图片
background-attachment : fixed 固定背景
background-repeat : repeat 重复排列-网页预设
background-repeat : no-repeat 不重复排列
background-repeat : repeat-x 在x轴重复排列
background-repeat : repeat-y 在y轴重复排列
background-position : 90% 90% 背景图片x与y轴的位置 　
链接
A 所有超连接
A:link 超连接文字格式
A:visited 浏览过的连接文字格式
A:active 按下连接的格式
A:hover 鼠标移至连接
边框
border-top : 1px solid black 上框
border-bottom : 1px solid #6699cc 下框
border-left : 1px solid #6699cc 左框
border-right : 1px solid #6699cc 右框
border: 1px solid #6699cc 四边框
虚线
<TEXTAREA STYLE="border:1px dashed pink">
实线
<TEXTAREA STYLE="border:1px solid pink">
```