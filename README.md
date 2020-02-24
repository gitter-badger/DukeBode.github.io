```ps1
# 初始化变量环境
py -m venv .env
# 设置 path 环境
$Env:path="./.env/Scripts/;"
# 更新 pip 至最新版本
python -m pip install --upgrade pip
```

<!-- 模块化 -->

/const 静态文件目录
/themes 主题目录
_config.yml 配置文件