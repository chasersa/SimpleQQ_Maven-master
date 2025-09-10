# 使用Git运行SimpleQQ项目完整指南

## 前提条件

确保你的系统已安装：
- Git
- Java 17 或更高版本
- Maven 3.6 或更高版本

## 方法一：从GitHub克隆（如果项目已上传到GitHub）

```bash
# 1. 克隆项目
git clone https://github.com/your-username/SimpleQQ_Maven.git
cd SimpleQQ_Maven

# 2. 编译项目
mvn clean compile package

# 3. 启动服务器（在一个终端窗口）
cd server
java -cp "target/server-1.0-SNAPSHOT.jar:../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.server.Server

# 4. 启动客户端（在另一个终端窗口）
cd client
java -cp "target/client-1.0-SNAPSHOT.jar:../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.client.LoginWindow
```

## 方法二：创建本地Git仓库

如果你有项目文件但没有Git仓库，可以这样做：

```bash
# 1. 进入项目目录
cd SimpleQQ_Maven-master

# 2. 初始化Git仓库
git init

# 3. 添加所有文件
git add .

# 4. 提交初始版本
git commit -m "Initial commit: SimpleQQ chat application"

# 5. 编译项目
mvn clean compile package

# 6. 启动服务器
cd server
java -cp "target/server-1.0-SNAPSHOT.jar:../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.server.Server

# 7. 在新终端启动客户端
cd ../client
java -cp "target/client-1.0-SNAPSHOT.jar:../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.client.LoginWindow
```

## 方法三：使用启动脚本

```bash
# 1. 克隆或进入项目目录
cd SimpleQQ_Maven-master

# 2. 给脚本执行权限（Linux/Mac）
chmod +x start-server.sh
chmod +x start-client.sh

# 3. 启动服务器
./start-server.sh

# 4. 在新终端启动客户端
./start-client.sh
```

## Windows用户

```cmd
# 1. 克隆项目
git clone https://github.com/your-username/SimpleQQ_Maven.git
cd SimpleQQ_Maven

# 2. 编译项目
mvn clean compile package

# 3. 启动服务器
start-server.bat

# 4. 启动客户端（新命令行窗口）
start-client.bat
```

## 常用Git命令

```bash
# 查看项目状态
git status

# 查看提交历史
git log --oneline

# 创建新分支
git checkout -b feature/new-feature

# 提交更改
git add .
git commit -m "Add new feature"

# 推送到远程仓库
git push origin main

# 拉取最新更改
git pull origin main
```

## 项目结构

```
SimpleQQ_Maven/
├── .git/                    # Git仓库信息
├── common/                  # 公共模块
│   ├── src/main/java/
│   └── pom.xml
├── server/                  # 服务器端
│   ├── src/main/java/
│   └── pom.xml
├── client/                  # 客户端
│   ├── src/main/java/
│   └── pom.xml
├── pom.xml                  # 父级Maven配置
├── README.md                # 项目说明
├── start-server.bat         # Windows服务器启动脚本
├── start-client.bat         # Windows客户端启动脚本
├── start-server.sh          # Linux/Mac服务器启动脚本
└── start-client.sh          # Linux/Mac客户端启动脚本
```

## 测试步骤

1. **启动服务器**：运行服务器启动脚本，看到"Server started on port 8888"
2. **启动客户端**：运行客户端启动脚本，出现登录界面
3. **登录测试**：使用预置账号（ID: 1, 密码: 123）登录
4. **功能测试**：
   - 注册新用户
   - 添加好友
   - 发送消息
   - 创建群聊
   - 发送图片

## 故障排除

```bash
# 检查Java版本
java -version

# 检查Maven版本
mvn -version

# 检查Git版本
git --version

# 清理并重新编译
mvn clean compile package

# 查看端口占用（Linux/Mac）
lsof -i :8888

# 查看端口占用（Windows）
netstat -ano | findstr :8888
```

## 开发工作流

```bash
# 1. 创建功能分支
git checkout -b feature/chat-improvements

# 2. 进行开发
# ... 修改代码 ...

# 3. 测试更改
mvn clean compile package
./start-server.sh
./start-client.sh

# 4. 提交更改
git add .
git commit -m "Improve chat functionality"

# 5. 合并到主分支
git checkout main
git merge feature/chat-improvements

# 6. 推送更改
git push origin main
```

## 注意事项

1. 确保8888端口未被占用
2. 先启动服务器再启动客户端
3. 可以同时运行多个客户端进行测试
4. 聊天记录和用户数据保存在server目录下
5. 图片文件保存在client目录下的相应文件夹中