### 工作区域和文件状态：
![image-20231110160051614](.\images\image-20231110160051614.png)

![image-20231110160519750](.\images\image-20231110160519750.png)

配置用户名和邮箱

git config --global user.name 'zjt000125'

git config --global user.email zjt000125@gmail.com

git init ./learn_git 生成一个带有.git文件的learn_git文件夹，这个文件夹整体称作git仓库

git status

git add file1.txt

git add *.txt

git add .(添加当前目录下所有文件到暂存区)

git rm --cached file1.txt 在暂存区删除文件

git commit -m 'The first commit'

git commit 不加-m参数，进入vim编辑界面，i键进入编辑模式，ESC退出编辑，:wq 退出vim

git log 查看commit记录

git log --oneline 查看简洁记录

### git reset回退版本

![image-20231111151509606](.\images\image-20231111151509606.png)

git reset --soft cfb5530

git ls-files 查看暂存区内容

git reset --hard HEAD^ 回退上一个commit版本

git reflow 查看历史操作与操作id

git reset --hard e63c546 回退操作

### git diff查看差异

git restore file1.txt  放弃修改（工作区内）

git restore --staged file1.txt 放弃修改（暂存区内）

git diff HEAD 比较工作区和版本库之间差异

git diff 比较工作区和暂存区差异

git diff --cache/staged 比较暂存区和版本库差异

git diff 提交id1 提交id2 比较两次提交结果之间的差异

git diff HEAD~ HEAD 比较当前版本和上一个版本差异

git diff HEAD^ HEAD

git diff HEAD~2 HEAD 当前版本和上上个版本

git diff HEAD~2 HEAD file3.txt 只查看file3.txt文件的差异内容

### 使用git rm删除文件

git rm file2.txt 将文件同时从暂存区和工作区删除

git rm --cached file2.txt 仅仅在暂存区删除文件

### .gitignore忽略文件

![image-20231111221200061](.\images\image-20231111221200061.png)

如果文件已经添加到暂存区，则无法ignore，必须从暂存区出来，.gitignore中的文件忽略才会生效

空文件夹自动被忽略

![image-20231111224251226](.\images\image-20231111224251226.png)

![image-20231111224458097](.\images\image-20231111224458097.png)

![image-20231111224603208](.\images\image-20231111224603208.png)

github/gitignore: A Collection ...     gitignore模版

### ssh配置和克隆仓库

ssh-keygen -t rsa -b 4096  生成ssh公私钥对

git clone repo-address

git push <remote> <branch>

git pull <remote>

**解决github连接不上的问题：**

https://zhuanlan.zhihu.com/p/521340971

~~~bash
$ vim ~/.ssh/config
```
# Add section below to it
Host github.com
  Hostname ssh.github.com
  Port 443
```
$ ssh -T git@github.com
Hi xxxxx! You've successfully authenticated, but GitHub does not
provide shell access.
~~~

[[SOLVED\] ssh could not resolve hostname github.com temporary failure in name resolution](https://codetryout.com/github-temporary-failure-in-name-resolution/)

\# cat /etc/resolv.conf 

nameserver 8.8.4.4 

nameserver 8.8.8.8

### 关联本地仓库和远程仓库

git remote add origin git@github.com:zjt000125/first-repo.git   关联指令

这里的origin是对git@github.com:zjt000125/first-repo.git 这一远程仓库的代号，后续的git push -u origin main就是将本地main分支和远程main分支关联，git push -u origin dev是将本地dev分支和远程dev分支关联（自动在远程创建该分支）

git remote -v  查看当前仓库所对应的远程仓库的别名和地址

git branch -M main 指定分支的名称为main

git push -u origin master:main  将本地仓库的master分支和别名为original远程仓库的main分支关联

git pull origin main:master 拉取别名为origin的远程仓库的main分支到本地的master分支

git pull 拉取并合并

git fetch 仅拉取

### 在VScode中使用git

code . 用vscode打开当前目录



### branch

git branch 查看当前仓库的所有分支

git branch dev 创建新分支

注意 git checkout filename将修改的文件恢复到之前状态，如果分支名和文件名相同，就会有歧义

git switch dev 专门用于切换分支

git merge dev 将指定分支合并到当前分支

![image-20231114002508253](.\images\image-20231114002508253.png)

git log --graph --oneline --decorate --all 查看分支结构图

git branch -d dev （-d表示删除已经完成合并的分支）

git branch -D dev 强制删除分支

### 解决合并冲突

git commit -a -m 'feat:1'   (-a 可以同时提交并加入暂存区)

git commit -am 'feat:1'    (省略成-am也可以)

git merge --abort  (合并发生冲突时，可以使用该命令中止合并)

### 回退的rebase

git switch dev

git rebase main  (将)当前分支拼接到main分支上

![image-20231114105813487](.\images\image-20231114105813487.png)

alias graph='git log --graph --oneline --decorate --all' 将长命令自定义别名，以后直接输入graph即可查看

### git 仓库嵌套

如果不是非常独立的单元，建议不要嵌套，删除.git文件然后将整个子项目复制到包含.git的母项目文件夹下，使用母项目的git对所有文件（包括子项目中的）进行统一管理。

如果是非常独立的子项目，则需要先将该子项目单独上传到github，得到链接（或者该项目本身就是从github上下载下来的），然后再显示声明添加子仓库到母项目仓库中（输入相关github链接）

