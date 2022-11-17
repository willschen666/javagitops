# 基础镜像
FROM  openjdk:8-jre
# author
MAINTAINER wills

# 挂载目录
VOLUME /home/wills
# 创建目录
RUN mkdir -p /home/wills
# 指定路径
WORKDIR /home/wills
# 复制jar文件到路径
COPY target/*.jar /home/wills/wills-test.jar
# 启动认证服务
ENTRYPOINT ["java","-jar","wills-test.jar"]