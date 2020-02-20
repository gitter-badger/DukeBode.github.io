
$config = "config11"
echo $config > hello
 = $config + "\hello"

# ssh 目录
$ssh = $home + "\.ssh"

# config 文件
$config = $ssh + "\config"

# 仓库私钥路径
$aliyun = $ssh + "\aliyun"
$coding = $ssh + "\coding"
$gitee = $ssh + "\gitee"
$github = $ssh + "\github"
$huawei = $ssh + "\huawei"
$azure = $ssh + '\azure'

echo $home 

echo github
# 在用户下的.ssh目录下运行
ssh-keygen -t rsa -C "Duke123@aliyun.com" -f aliyun
ssh-keygen -t rsa -C "Duke123@aliyun.com" -f aliyun_ecs
ssh-keygen -t rsa -C "Duke123@aliyun.com" -f azure
ssh-keygen -t rsa -C "Duke123@aliyun.com" -f coding
ssh-keygen -t rsa -C "Duke123@aliyun.com" -f gitee
ssh-keygen -t rsa -C "Duke123@aliyun.com" -f github
ssh-keygen -t rsa -C "Duke123@aliyun.com" -f huawei

