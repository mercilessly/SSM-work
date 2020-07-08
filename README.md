# SSM-work
人员信息管理系统
# 环境
	开发软件idea
	jdk9
	mysql8
# 项目(SSM-work)
	使用了sigar包
		如果是windows系统，那么需要
			sigar-amd64-winnt.dll(64位的)或者是sigar-x86-winnt.dll（32位系统的）
		如果是linux系统，需要
			libsigar-amd64-linux.so（64位系统的）或者libsigar-x86-linux.so（32位系统的）
在自己的Java项目中引入sigar.jar
同时将对应的dll文件或者so文件添加到系统目录。例如：windows下把sigar-x86-winnt.dll添加到c:\WINDOWS\system32或者jdk的bin目录。
linux下把libsigar-amd64-linux.so（64位系统的）或者libsigar-x86-linux.so（32位系统的添加到 
/usr/java/packages/lib/amd64
/usr/lib64
/lib64
/lib
/usr/lib
均为其有效路径。第一个路径并不存在，需要自己新建。
觉得第一个更好，这样便于管理。
