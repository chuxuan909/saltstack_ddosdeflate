                这是saltstack自动部署ddosfeflate的sls文件
1. 将inddosfeflate.sls文件和ddosfeflate目录 和unddosfeflate.sls文件复制到/srv/salt目录下（yum 安装salt-master）
2. 修改top.sls文件，添加ddosfeflate
执行模块：salt '*'  state.sls inddosfeflate
                关于ddosfeflate
1. 默认已经运行
2. 每50秒执行一次ddos检测脚本如需修改，请修改配置文件ddos.conf）
3. 安装位置/usr/lcoal/ddos
4. 删除软件=====>执行unddosfeflate模块：salt '*'  state.sls unddosfeflate
4. 定时任务文件所在位置：
/etc/cron.d/ddos.cron 