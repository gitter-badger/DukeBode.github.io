---
title: combinations
date: 2020-01-05 13:28:31
cover:
tags:
---


$$ C_n^m=\frac{A_n^m}{m!}=\frac{n!}{(n-m)!m!}=\frac{\prod_{i=n-m+1}^{n}i}{m!}=C_n^{n-m} \quad (n \geq m \geq 1)$$

结论：
1. 从n个不同元素中取出m个元素的组合数即n的阶乘除以除以(n-m)的阶乘与m的阶乘的积的商。

```py
from math import factorial
def combinations(n,m):
    return factorial(n)//factorial(m)//factorial(n-m)
```

1. 化简可得，从n个不同元素中取出m个元素的组合数即出现一次的偏大整数的积除以出现三次的偏小整数的积的商。

```py
def combinations(n,m):
    result = 1
    min,max=sorted((m,n-m))
    for i in range(n,0,-1):
        if i>max:
            result *= i
        elif i <= min:
            result = result // i
    return result
```

1. n个连续整数的积可被n的阶乘整除。

```py
def combinations(n,m):
    result = 1
    for i in range(m):
        result=result*(n-i)//(i+1)
    return result
```

1. 从n个不同元素中取出m个元素的组合数与从n个不同元素中取出(n-m)个元素的组合数相等。

```py
def combinations(n,m):
    result = 1
    for i in range(min(n-m,m)):
        result=result*(n-i)//(i+1)
    return result
```