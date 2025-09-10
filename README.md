# SimpleQQ 聊天程序运行指南

这是一个基于Java的简单QQ聊天程序，包含服务器端和客户端，支持用户注册、登录、好友管理、单聊、群聊和图片发送等功能。

## 系统要求

- Java 17 或更高版本
- Maven 3.6 或更高版本

## 项目结构

```
SimpleQQ_Maven-master/
├── common/          # 公共模块（消息类、用户类等）
├── server/          # 服务器端
├── client/          # 客户端
└── pom.xml         # 父级Maven配置
```

## 编译项目

在项目根目录下执行：

```bash
cd SimpleQQ_Maven-master
mvn clean compile package
```

## 运行步骤

### 1. 启动服务器

在项目根目录下执行：

```bash
cd server
java -cp "target/server-1.0-SNAPSHOT.jar;../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.server.Server
```

或者使用提供的启动脚本：
- Windows: `start-server.bat`
- Linux/Mac: `start-server.sh`

服务器将在端口8888上启动。

### 2. 启动客户端

在新的终端窗口中，在项目根目录下执行：

```bash
cd client
java -cp "target/client-1.0-SNAPSHOT.jar;../common/target/common-1.0-SNAPSHOT.jar" com.simpleqq.client.LoginWindow
```

或者使用提供的启动脚本：
- Windows: `start-client.bat`
- Linux/Mac: `start-client.sh`

## 功能说明

### 用户管理
- **注册**: 创建新用户账号（需要唯一ID、用户名和密码）
- **登录**: 使用ID和密码登录系统

### 好友管理
- **添加好友**: 发送好友请求
- **接受/拒绝好友请求**: 处理收到的好友请求
- **删除好友**: 移除好友关系
- **查看好友列表**: 显示所有好友及其在线状态

### 聊天功能
- **单聊**: 与好友进行一对一聊天
- **群聊**: 创建群组并邀请成员进行群聊
- **图片发送**: 支持在单聊和群聊中发送图片
- **聊天记录**: 自动保存和加载聊天历史

### 群组管理
- **创建群组**: 创建新的聊天群组
- **邀请成员**: 邀请用户加入群组
- **查看群成员**: 显示群组成员列表

## 默认测试账号

系统预置了一些测试账号：
- 用户1: ID=1, 用户名=1, 密码=123
- 用户2: ID=2, 用户名=2, 密码=123  
- 用户3: ID=3, 用户名=3, 密码=123

## 数据文件

程序运行时会在server目录下创建以下数据文件：
- `users.txt`: 用户信息
- `friendships.txt`: 好友关系
- `friend_requests.txt`: 好友请求
- `groups.txt`: 群组信息
- `group_invites.txt`: 群组邀请
- `chat_history_*.txt`: 聊天记录文件

## 注意事项

1. 确保先启动服务器再启动客户端
2. 服务器默认监听127.0.0.1:8888
3. 可以同时运行多个客户端实例进行测试
4. 图片文件会保存在客户端的相应目录中
5. 聊天记录会自动保存，重新登录后可以查看历史消息

## 故障排除

如果遇到问题：
1. 检查Java版本是否为17或更高
2. 确保Maven编译成功
3. 检查8888端口是否被占用
4. 查看控制台输出的错误信息