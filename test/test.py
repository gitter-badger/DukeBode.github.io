import codecs, re
from os.path import getmtime,join,isdir
from time import strftime,localtime
from os import mkdir,listdir
from shutil import rmtree

md_re = re.compile('(?sm)^---\s*(.*?)\s*^---\s*(.*)')

# 文件路径
def a(uri):
    files=[]
    for item in listdir(uri):
        u=join(uri,item)
        if isdir(u):
            files += a(u)
        else:
            files.append(u)
    return files

from ruamel.yaml import YAML

config=None
with open('_config.yml','r',encoding="utf-8") as f:
    config = YAML(typ='safe').load(f.read())

page=config['page_dir']
theme=None
with open(f"data/{config['theme']}.yml",'r',encoding="utf-8") as f:
    theme = YAML(typ='safe').load(f.read())

from markdown import Markdown
from jinja2 import Environment,FileSystemLoader
env = Environment(loader=FileSystemLoader('themes/cosmos/layout'))
template = env.get_template('index.j2')
# 保存为文件
output = "public"
rmtree(output,ignore_errors=True)

mkdir(output)
l =len(page)+1
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
        html = template.render(body=body,page=frontmaster,theme=theme,config=config)
        # 除空行
        html = re.sub(r'\n\s*\n','\n',html)
        output_uri = join(output,f'{item[l:]}.html')
        output_file = codecs.open(output_uri, mode="w", encoding="utf-8")
        output_file.write(html)
        # print(output_uri)
    # break

