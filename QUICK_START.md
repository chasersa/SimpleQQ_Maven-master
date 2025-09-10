# SimpleQQ 快速启动指南

## 一键启动命令

### Linux/Mac用户：

```bash
# 克隆项目（如果从远程仓库）
git clone <repository-url>
cd SimpleQQ_Maven

# 或者进入现有项目目录
cd SimpleQQ_Maven-master

# 编译并启动服务器
mvn clean compile package && cd server && java -cp "target/server-1.0-SNAPSHOT.jar:../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.server.Server
```

在新终端窗口：
```bash
# 启动客户端
cd SimpleQQ_Maven-master/client && java -cp "target/client-1.0-SNAPSHOT.jar:../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.client.LoginWindow
```

### Windows用户：

```cmd
# 克隆项目（如果从远程仓库）
git clone <repository-url>
cd SimpleQQ_Maven

# 或者进入现有项目目录
cd SimpleQQ_Maven-master

# 编译并启动服务器
mvn clean compile package && cd server && java -cp "target/server-1.0-SNAPSHOT.jar;../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.server.Server
```

在新命令行窗口：
```cmd
# 启动客户端
cd SimpleQQ_Maven-master/client && java -cp "target/client-1.0-SNAPSHOT.jar;../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.client.LoginWindow
```

## 使用启动脚本（推荐）

```bash
# 给脚本执行权限
chmod +x start-server.sh start-client.sh

# 启动服务器
./start-server.sh

# 在新终端启动客户端
./start-client.sh
```

## 测试账号

- 用户1: ID=1, 密码=123
- 用户2: ID=2, 密码=123  
- 用户3: ID=3, 密码=123

## 功能测试清单

- [ ] 用户注册
- [ ] 用户登录
- [ ] 添加好友
- [ ] 单聊
- [ ] 群聊
- [ ] 发送图片
- [ ] 查看聊天记录