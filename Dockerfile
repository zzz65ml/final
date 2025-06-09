# 使用nginx作为基础镜像
FROM nginx:alpine

# 将当前目录下的文件复制到nginx的默认网站目录
COPY . /usr/share/nginx/html

# 暴露80端口
EXPOSE 80

# 启动nginx服务
CMD ["nginx", "-g", "daemon off;"]