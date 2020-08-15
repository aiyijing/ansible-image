# Ansible Image

一个基于 python alpine 镜像制作的 Ansible 镜像.  
通常作为实际业务镜像的 Base Image

## 为什么有这个项目

Ansible 官方镜像已经两年没有更新了. 官方镜像中存在许多的安全漏洞.  
另外使用 alpine 可以大大的缩小镜像体积.镜像已预装 ssh 模块.

## 镜像使用

* 镜像 pull

```bash
docker pull aiyijing/ansible:latest
```

* 特殊模块的安装
建议以 aiyijing/ansible:latest 为 Base Image,
然后构建自定义镜像.这样可以使业务镜像大大缩小.  

```dockerfile
FROM aiyijing/ansible:latest
RUN apk --no-cache add unzip
CMD ["bash","-c","unzip"]
```

## 自构建 Ansible 镜像

* 国内建议使用 Dockerfile.cn (阿里源构建镜像)
```bash
docker build -f Dockerfile.cn  . -t aiyijing/ansible:latest
```

* 国外建议使用 Dockerfile (alpine 默认源)
```bash
docker build . -t aiyijing/ansible:latest
```
