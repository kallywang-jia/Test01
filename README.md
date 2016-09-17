# Test01
first use,just test!


GIT 常用命令：

1.克隆服务器上的仓库
git clone https://github.com/kallywang-jia/Test01


2.查看本地的修改
git status


3.上传，分三步
    git add .
    git commit -a -m"modify by gengpengpeng"
    git push origin master(分之名字)


4.创建其他的一个分之,举例 创建一个wangjia的分支
git branch wangjia 

5.查看当前仓库所有的分之
git branch -a

6.切换分支,例如，切换到wangjia这个分支上
git checkout wangjia


7.删除分支，比如删除当地的wangjia这个分支
git branch -d wangjia


8.删除远程的分支，比如删除远程的wangjia这个分支
-----


9.合并分支，比如把wangjia这个分支合并到master上
    首先切换到master上：git checkout master
    其次合并：git merge wangjia

10.更新代码
	第一种情况：当前是master分支，把服务器上master的代码更新到本地master上
	git pull origin master:master
	简写为：git pull origin master

	第二种情况：当前是wangjia分支，把服务器上master的代码更新到本地wangjia上
	git pull origin master:wangjia





































