import codecs, re
from os.path import getmtime,join,isdir
from time import strftime,localtime
from os import mkdir,listdir
from shutil import rmtree

md_re = re.compile('(?sm)^---\s*(.*?)\s*^---\s*(.*)')
page='E:\WorkSpace\github\DukeBode.github.io\source\_posts'

def a(uri):
    files=[]
    for item in listdir(uri):
        u=join(uri,item)
        if isdir(u):
            files += a(u)
        else:
            files.append(u)
    return files

l =len(page)+1
from ruamel.yaml import YAML
from markdown import Markdown
from jinja2 import Environment,FileSystemLoader
env = Environment(loader=FileSystemLoader('themes/cosmos/layout'))
template = env.get_template('index.j2')
# 保存为文件
output = "public"
rmtree(output,ignore_errors=True)

mkdir(output)
for item in a(page):
    # print(,end='\t')
    print(strftime("%Y-%m-%d %H:%M:%S",localtime(getmtime(item))))
    # 读取 markdown 文本
    input_file = codecs.open(item, mode="r", encoding="utf-8")
    text = input_file.read()
    md=md_re.match(text)
    if md:
        frontmaster = YAML(typ='safe').load(md[1])
        # 转为 html 文本
        m = Markdown(extensions=[
            'markdown.extensions.fenced_code',
            'markdown.extensions.codehilite',
            'markdown.extensions.tables'])
        body = m.convert(md[2])
        html = template.render(body=body,page=frontmaster)
        output_uri = join(output,f'{item[l:]}.html')
        output_file = codecs.open(output_uri, mode="w", encoding="utf-8")
        output_file.write(html)
        print(output_uri)

