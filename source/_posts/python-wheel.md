---
title: python-wheel
date: 2019-11-09 21:44:03
cover:
tags:
- python
---

### 打包环境

```sh
# bdist
pip install --upgrade setuptools
# bdist_wheel
pip install wheel
# twine upload dist/*
pip install twine
```

### __init__.py

> __init__.py 文件表明当前文件夹为 Python 模块,模块被导入时实际为此文件，模块方式运行时先执行此文件。

#### __init__.py 中常配置的模块参数

- __all__ 指定 `form package import *` 的内容
- __version__ 指定版本

### __main__.py

> __main__.py 文件表明当前文件夹可作为模块运行，可以文件夹、模块方式运行时执行此文件，相当于依赖模块的示例程序。

### setup.py

> setup.py 文件是 setuptools 打包的脚本文件，文件内应当写明包相关信息，以及其它的附属操作。

```py
# 示例
# https://github.com/pypa/sampleproject/blob/master/setup.py
with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="example-pkg-YOUR-USERNAME-HERE", # Replace with your own username
    version="0.0.1",
    author="Example Author",
    author_email="author@example.com",
    description="A small example package",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/pypa/sampleproject",
    packages=setuptools.find_packages(),
    classifiers=[
        # https://pypi.org/classifiers/
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
)
```
