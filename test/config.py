from ruamel.yaml import YAML

config=None
with open('_config.yml','r',encoding="utf-8") as f:
    config = YAML(typ='safe').load(f.read())
for i in config:
    print(f'{config[i]}')
