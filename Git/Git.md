# Git

## 源

### 文档

- [<font color="violet">git.doc</font>](./相关资料/git.doc)

### drawio

- [<font color="violet">Git.drawio</font>](./Git.drawio)

## 概述

### **软件配置管理** (Software Configuration Management)

软件配置管理(==SCM==)是指通过执行版本控制、变更控制的规程，以及使用合适的配置管理软件，来保证所有配置项的完整性和可跟踪性。配置管理是对工作成果的一种有效保护。

### 常用SCM软件

#### VSS (Visual Source Safe)

![1681393022741](Git.assets/1681393022741.png)

美国微软公司出品的版本控制系统，简称VSS   集中式版本控制系统

#### CVS（Concurrent Version System）

老牌的版本控制系统，它是基于客户端 /服务器的行为使得其可容纳多用户，构成网络也很方便,简称为CVS

#### SVN（Subversion）

开放源代码的版本控制系统，通过采用分支管理系统的高效管理，简而言之就是用于多个人共同开发同一个项目，实现共享资源，实现最终集中式的管理

#### PERFORCE

一款非常优秀的商业化版本管理工具,特别是对美术资源比较友好,更新速度快安全

#### Rational ClearCase

IBM Rational公司的旗舰产品之一，是全球领先的软件配置管理工具，它广泛地应用于众多的企业级软件工程实践之中，拥有众多的企业级用户

#### Git

开源的分布式版本控制系统，可以有效、高速地处理从很小到非常大的项目版本管理。也是Linus Torvalds为了帮助管理Linux内核开发而开发的一个开放源码的版本控制软件

### 版本控制软件的基本功能

#### 保存和管理文件

![1681394097739](Git.assets/1681394097739.png '保存和管理文件')

#### 提供客户端工具进行访问

![1681394165726](Git.assets/1681394165726.png)

#### 提供不同版本文档的比对功能

![1681394214283](Git.assets/1681394214283.png)

### 版本控制软件的分类

#### 集中式版本控制

![1681396037601](Git.assets/1681396037601.png)

#### 分布式版本控制

![1681396075624](Git.assets/1681396075624.png)

## Github Desktop

用此工具创建会多一个文件

![1681574287747](Git.assets/1681574287747.png)

![1681575495175](Git.assets/1681575495175.png)

![1681575501743](Git.assets/1681575501743.png)

### 本地仓库操作

#### 本地仓库在Github Desktop中显示

![1681397091345](Git.assets/1681397091345.png)

#### 删除仓库

![1681397132004](Git.assets/1681397132004.png)

![1681397140241](Git.assets/1681397140241.png)

### 分支操作

#### 分支合并

![1681400682960](Git.assets/1681400682960.png)

分支合并可能会出现冲突，需要人工进行干预

![1681400324755](Git.assets/1681400324755.png)

![1681400336884](Git.assets/1681400336884.png)

![1681400345762](Git.assets/1681400345762.png)

### 文件操作

* 忽略操作

![1681402559821](Git.assets/1681402559821.png)

![1681402567857](Git.assets/1681402567857.png)

![1681402576360](Git.assets/1681402576360.png)

![1681402588257](Git.assets/1681402588257.png)

![1681402595896](Git.assets/1681402595896.png)

![1681402604690](Git.assets/1681402604690.png)

![1681402622394](Git.assets/1681402622394.png)

头行作用，告诉修改信息

![1681402636436](Git.assets/1681402636436.png)

### 标签操作

![1681400729277](Git.assets/1681400729277.png)

![1681400738918](Git.assets/1681400738918.png)

![1681400756381](Git.assets/1681400756381.png)

删除标签

![1681400771148](Git.assets/1681400771148.png)

### 远程仓库

#### github

![1681401966793](Git.assets/1681401966793.png)

![1681401996575](Git.assets/1681401996575.png)

![1681402003743](Git.assets/1681402003743.png)

![1681402014207](Git.assets/1681402014207.png)

![1681402029708](Git.assets/1681402029708.png)

![1681402050660](Git.assets/1681402050660.png)

![1681402063946](Git.assets/1681402063946.png)

#### gitee

![1681402436802](Git.assets/1681402436802.png)

![1681402444208](Git.assets/1681402444208.png)

![1681402451742](Git.assets/1681402451742.png)

### 标签操作

#### 创建标签

![1681579430153](Git.assets/1681579430153.png)

![1681579437776](Git.assets/1681579437776.png)

![1681579546206](Git.assets/1681579546206.png)

![1681579555963](Git.assets/1681579555963.png)

## github

### 注册登录

![1681401241861](Git.assets/1681401241861.png)

### 仓库操作

#### 创建仓库

![1681401267211](Git.assets/1681401267211.png)

![1681401377159](Git.assets/1681401377159.png)

![1681401383850](Git.assets/1681401383850.png)

![1681401394999](Git.assets/1681401394999.png)

* 仓库创建后创建新的文件

![1681401862405](Git.assets/1681401862405.png)

![1681401870580](Git.assets/1681401870580.png)

![1681401902700](Git.assets/1681401902700.png)

#### 删除仓库

![1681401777653](Git.assets/1681401777653.png)

![1681401786302](Git.assets/1681401786302.png)

![1681401799405](Git.assets/1681401799405.png)

### 文件操作

#### 创建并提交新文件

![1681401428695](Git.assets/1681401428695.png)

![1681401436143](Git.assets/1681401436143.png)

![1681401444568](Git.assets/1681401444568.png)

![1681401453739](Git.assets/1681401453739.png)

#### 修改文件

![1681401526924](Git.assets/1681401526924.png)

![1681401535881](Git.assets/1681401535881.png)

![1681401542381](Git.assets/1681401542381.png)

![1681401553385](Git.assets/1681401553385.png)

### 分支管理

![1681401623766](Git.assets/1681401623766.png)

#### 创建新分支

![1681401630896](Git.assets/1681401630896.png)

![1681401697644](Git.assets/1681401697644.png)

#### 切换分支

![1681401708832](Git.assets/1681401708832.png)

## gitee

### 登录注册

![1681402280740](Git.assets/1681402280740.png)

### 仓库操作

#### 创建仓库

![1681402288028](Git.assets/1681402288028.png)

![1681402382196](Git.assets/1681402382196.png)

## IDEA集成Git

### 本地git仓库

![1681567997607](Git.assets/1681567997607.png)

### 远程仓库github

#### 登录github账号

![1681568028354](Git.assets/1681568028354.png)

![1681568034340](Git.assets/1681568034340.png)

![1681568043066](Git.assets/1681568043066.png)

![1681568048300](Git.assets/1681568048300.png)

![1681568053513](Git.assets/1681568053513.png)

![1681568061578](Git.assets/1681568061578.png)

#### 提交到本地或远程仓库

![1681568147803](Git.assets/1681568147803.png)

![1681568154550](Git.assets/1681568154550.png)

![1681568161492](Git.assets/1681568161492.png)

![1681568169437](Git.assets/1681568169437.png)

![1681568179494](Git.assets/1681568179494.png)

#### 合并数据pull

![1681568268751](Git.assets/1681568268751.png)

![1681568274545](Git.assets/1681568274545.png)

#### Clone代码

![1681568292344](Git.assets/1681568292344.png)![1681568300945](Git.assets/1681568300945.png)

![1681568306050](Git.assets/1681568306050.png)![1681568317267](Git.assets/1681568317267.png)

### 远程仓库Gitee

#### 下载Gitee插件

![1681568359743](Git.assets/1681568359743.png)

#### 登录上传项目到Gitee

![1681569298064](Git.assets/1681569298064.png)

![1681569303481](Git.assets/1681569303481.png)

![1681569308419](Git.assets/1681569308419.png)

![1681569314516](Git.assets/1681569314516.png)

![1681569319025](Git.assets/1681569319025.png)

![1681569347049](Git.assets/1681569347049.png)

#### 提交到本地或远程仓库

![1681570025543](Git.assets/1681570025543.png)

![1681570044919](Git.assets/1681570044919.png)

#### 合并数据pull

![1681570084629](Git.assets/1681570084629.png)

![1681570090768](Git.assets/1681570090768.png)

![1681570100496](Git.assets/1681570100496.png)

#### 其他操作

![1681570140565](Git.assets/1681570140565.png)

![1681570146414](Git.assets/1681570146414.png)

## Git知识

### 版本号

采用SHA-1加密算法：40位

![1681571486924](Git.assets/1681571486924.png)

看版本号

![1681571831104](Git.assets/1681571831104.png)

![1681571917493](Git.assets/1681571917493.png)

### 三种文件

![1681572836677](Git.assets/1681572836677.png)

### 各文件细节

#### HEAD文件

![1681573701389](Git.assets/1681573701389.png)

![1681572885643](Git.assets/1681572885643.png)

![1681572900689](Git.assets/1681572900689.png)

### Git命令

#### Git克隆

![1681575862521](Git.assets/1681575862521.png)

#### 设置账号邮箱

##### 使用git命令

![1681575897922](Git.assets/1681575897922.png)

![1681575974976](Git.assets/1681575974976.png)

局部的文件路径

![1681575932295](Git.assets/1681575932295.png)

![1681575949463](Git.assets/1681575949463.png)

全局的文件路径

![1681576202582](Git.assets/1681576202582.png)

![1681576207051](Git.assets/1681576207051.png)

##### 使用 github desktop

![1681576304438](Git.assets/1681576304438.png)

![1681576318073](Git.assets/1681576318073.png)

![1681576322725](Git.assets/1681576322725.png)

#### 暂存区

##### 查看暂存区状态

![1681576385235](Git.assets/1681576385235.png)

##### 添加文件

* 普通添加一个文件

![1681576509277](Git.assets/1681576509277.png)

* 通配符格式添加

  ![1681576731243](Git.assets/1681576731243.png)

##### 删除文件

![1681576543002](Git.assets/1681576543002.png)

#### 本地仓库

##### 添加文件

![1681576838975](Git.assets/1681576838975.png)

#### 查看日志

显示提交信息

![1681576884413](Git.assets/1681576884413.png)

![1681577018708](Git.assets/1681577018708.png)

* 版本号

  ![1681577074961](Git.assets/1681577074961.png)

* Github Desktop中的日志

  ![1681577140643](Git.assets/1681577140643.png)

* 通过标签查看日志

  ![1681579270707](Git.assets/1681579270707.png)

#### 误删之后恢复

![1681577507962](Git.assets/1681577507962.png)

![1681577529256](Git.assets/1681577529256.png)

##### restore

必须存储区里有才能恢复

![1681577546524](Git.assets/1681577546524.png)

##### reset

存储区里没有的情况下可以使用

![1681577725635](Git.assets/1681577725635.png)

但reset可能会使之前的提交信息丢失

![1681578060001](Git.assets/1681578060001.png)

##### revert

又想恢复文件，又不想丢失之前的提交信息

![1681578183496](Git.assets/1681578183496.png)

还原到这个版本号之前的那个操作

![1681578230643](Git.assets/1681578230643.png)

等同于创建了一个新的提交

![1681578504705](Git.assets/1681578504705.png)

#### 分支操作

##### 创建分支

![1681578567391](Git.assets/1681578567391.png)

##### 查看分支

![1681578619324](Git.assets/1681578619324.png)

##### 切换分支

![1681578694961](Git.assets/1681578694961.png)

##### 创建并切换分支

![1681578750620](Git.assets/1681578750620.png)

##### 删除分支

![1681578792300](Git.assets/1681578792300.png)

##### 合并分支

![1681578978098](Git.assets/1681578978098.png)

#### 文件冲突

![1681579003234](Git.assets/1681579003234.png)

![1681579019425](Git.assets/1681579019425.png)

![1681579043225](Git.assets/1681579043225.png)

#### 标签操作

![1681579155258](Git.assets/1681579155258.png)

##### 创建标签

![1681579189708](Git.assets/1681579189708.png)

可以通过标签查看日志

![1681579303206](Git.assets/1681579303206.png)

![1681579324768](Git.assets/1681579324768.png)

##### 删除标签

![1681579364418](Git.assets/1681579364418.png)

#### 远程仓库

局部文件位置及信息

![1681579645217](Git.assets/1681579645217.png)

##### 添加

![1681579807454](Git.assets/1681579807454.png)

##### 重命名

![1681579829574](Git.assets/1681579829574.png)

##### 删除

![1681579851685](Git.assets/1681579851685.png)

##### 远程仓库推送push

![1681579976601](Git.assets/1681579976601.png)

##### 远程仓库拉取并合并pull

![1681580052064](Git.assets/1681580052064.png)
