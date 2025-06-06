# 使用Nginx作为基础镜像
FROM nginx:1.23-alpine

# 复制个人网站文件到Nginx默认目录
COPY index.html /usr/share/nginx/html/
COPY your-image.jpg /usr/share/nginx/html/

# 暴露80端口
EXPOSE 80