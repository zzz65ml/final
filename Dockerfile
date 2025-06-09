## 使用Nginx作为基础镜像
#FROM nginx:1.23-alpine
#
## 复制个人网站文件到Nginx默认目录
#COPY index.html /usr/share/nginx/html/
#COPY your-image.jpg /usr/share/nginx/html/
#
## 暴露80端口
#EXPOSE 80
# 使用Node.js作为基础镜像
FROM node:18-alpine

# 安装依赖并复制代码
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# 暴露3000端口
EXPOSE 3000

# 启动应用
CMD ["npm", "start"]