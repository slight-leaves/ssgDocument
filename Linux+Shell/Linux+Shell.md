# Linux

## 源

### 文档

- [<font color="violet">VMware与CentOS及XShell的安装.docx</font>](./相关资料/VMware与CentOS及XShell的安装.docx)
- [<font color="violet">高级技术之Linux(CentOS7.9).docx</font>](./相关资料/高级技术之Linux(CentOS7.9).docx)

### drawio

* [<font color="violet">linux.drawio</font>](./linux.drawio)

## 入门篇（镜像装虚拟机）

### Linux概述

#### Linux与Unix的关系

![1681918313798](Linux+Shell.assets/1681918313798.png)

两位大佬：Ken Thompson、Dennis Ritchie

* Multix  
  * 1965年、贝尔实验室 、批处理、多用户、分时
* Unix
  * 汇编、fortran -> B语言 -> new B （改名叫C语言，Dennis Ritchie主导）
* Solaris、IBM-AXI、HP-UX
  * 重度依赖硬件
* BSD、free BSD
  * BSD协议，更改后又可以闭源
* Darwin
  * macOS的前身
* Minix
  * 全部开源的小型unix，大学教授开发，供学习使用
* Linux
  * linux的发行协议GPL、你更改内核发行版本、必须也开源源代码

#### GUN/Linux

![1681918418575](Linux+Shell.assets/1681918418575.png)

#### Linux的发行版本

![1681918480071](Linux+Shell.assets/1681918480071.png)

* fedata
  * 测试、新版本、不太稳定
* Cent OS
  * 稳定、比较流行（商用、免费）
  * 包管理工具：rpm、yum
* debian
  * 最遵循GUN系统的规范
* ubuntu
  * 比较激进、页面资源、个人
* Linux mint
  * 比较像早期的windows界面
* suse
  * 界面华丽漂亮
* gentoo Linux
  * 性能强悍
* archlinxu
  * 轻量级、自动最新版本
* monjaro
  * 对新手更加友好

### Cent OS镜像下载

#### 新版本

Cent OS Stream流、不断更新的发行版本

由于后面会变得不稳定，用Stream版本的话，后来Cent OS创始人离队，搞Rocky

![1681918958368](Linux+Shell.assets/1681918958368.png)

![1681918965599](Linux+Shell.assets/1681918965599.png)

![1681918971822](Linux+Shell.assets/1681918971822.png)

![1681918979826](Linux+Shell.assets/1681918979826.png)

![1681919310603](Linux+Shell.assets/1681919310603.png)

#### 老版本

![1681919355877](Linux+Shell.assets/1681919355877.png)

![1681919363109](Linux+Shell.assets/1681919363109.png)

![1681919369500](Linux+Shell.assets/1681919369500.png)

![1681919375099](Linux+Shell.assets/1681919375099.png)

![1681919385016](Linux+Shell.assets/1681919385016.png)

![1681919392576](Linux+Shell.assets/1681919392576.png)

![1681919398210](Linux+Shell.assets/1681919398210.png)

![1681919404774](Linux+Shell.assets/1681919404774.png)

![1681919411406](Linux+Shell.assets/1681919411406.png)

![1681919418477](Linux+Shell.assets/1681919418477.png)

#### 几种安装

* 真实
* 模拟
  * WSL云服务
  * 软件
  * docker容器

### VMware下载与安装

#### 下载

##### 下载界面

![1681919769440](Linux+Shell.assets/1681919769440.png)

![1681919977380](Linux+Shell.assets/1681919977380.png)

![1681919984613](Linux+Shell.assets/1681919984613.png)

##### 对比

![1681920019526](Linux+Shell.assets/1681920019526.png)

oracle也有推出virtual box，但目前功能及性能补给VMware

#### 安装

基本一直下一步

![1681920109948](Linux+Shell.assets/1681920109948.png)

### 创建虚拟机

![1681920179241](Linux+Shell.assets/1681920179241.png)

![1681920186385](Linux+Shell.assets/1681920186385.png)

![1681920199005](Linux+Shell.assets/1681920199005.png)

![1681920204235](Linux+Shell.assets/1681920204235.png)

![1681920209453](Linux+Shell.assets/1681920209453.png)

![1681920215053](Linux+Shell.assets/1681920215053.png)

![1681920230611](Linux+Shell.assets/1681920230611.png)

![1681920235743](Linux+Shell.assets/1681920235743.png)

![1681920244609](Linux+Shell.assets/1681920244609.png)

![1681920253365](Linux+Shell.assets/1681920253365.png)

![1681920261309](Linux+Shell.assets/1681920261309.png)

![1681920268946](Linux+Shell.assets/1681920268946.png)

![1681920274110](Linux+Shell.assets/1681920274110.png)

![1681920282252](Linux+Shell.assets/1681920282252.png)

![1681920296901](Linux+Shell.assets/1681920296901.png)

注意：VT-X开启了，才能启动虚拟机，若没有启动就需要去BIOS中启动虚拟化设置

![1681920366827](Linux+Shell.assets/1681920366827.png)

### 安装Cent OS

![1681920438824](Linux+Shell.assets/1681920438824.png)

![1681920453105](Linux+Shell.assets/1681920453105.png)

![1681920461455](Linux+Shell.assets/1681920461455.png)

![1681920467810](Linux+Shell.assets/1681920467810.png)

![1681920472578](Linux+Shell.assets/1681920472578.png)

![1681920478229](Linux+Shell.assets/1681920478229.png)

![1681920488328](Linux+Shell.assets/1681920488328.png)

![1681920498162](Linux+Shell.assets/1681920498162.png)

![1681920536147](Linux+Shell.assets/1681920536147.png)

![1681920547898](Linux+Shell.assets/1681920547898.png)

![1681920631780](Linux+Shell.assets/1681920631780.png)

![1681920642125](Linux+Shell.assets/1681920642125.png)

![1681920649244](Linux+Shell.assets/1681920649244.png)

![1681920655070](Linux+Shell.assets/1681920655070.png)

![1681920665737](Linux+Shell.assets/1681920665737.png)

![1681920713760](Linux+Shell.assets/1681920713760.png)

![1681920722044](Linux+Shell.assets/1681920722044.png)

![1681920734464](Linux+Shell.assets/1681920734464.png)

![1681920740854](Linux+Shell.assets/1681920740854.png)

![1681920770705](Linux+Shell.assets/1681920770705.png)

![1681920776017](Linux+Shell.assets/1681920776017.png)

![1681920792521](Linux+Shell.assets/1681920792521.png)

![1681920802789](Linux+Shell.assets/1681920802789.png)

![1681920811179](Linux+Shell.assets/1681920811179.png)

![1681920821936](Linux+Shell.assets/1681920821936.png)

![1681920828133](Linux+Shell.assets/1681920828133.png)

![1681920833902](Linux+Shell.assets/1681920833902.png)

![1681920846160](Linux+Shell.assets/1681920846160.png)

![1681920855286](Linux+Shell.assets/1681920855286.png)

![1681920863070](Linux+Shell.assets/1681920863070.png)

![1681920868360](Linux+Shell.assets/1681920868360.png)

![1681920874615](Linux+Shell.assets/1681920874615.png)

![1681920881597](Linux+Shell.assets/1681920881597.png)

![1681920919744](Linux+Shell.assets/1681920919744.png)

![1681920925731](Linux+Shell.assets/1681920925731.png)

![1681920934214](Linux+Shell.assets/1681920934214.png)

![1681920940713](Linux+Shell.assets/1681920940713.png)

![1681920947395](Linux+Shell.assets/1681920947395.png)

![1681920953001](Linux+Shell.assets/1681920953001.png)

![1681920958110](Linux+Shell.assets/1681920958110.png)

![1681920964176](Linux+Shell.assets/1681920964176.png)

![1681920970544](Linux+Shell.assets/1681920970544.png)

![1681920982221](Linux+Shell.assets/1681920982221.png)

![1681920990461](Linux+Shell.assets/1681920990461.png)

## 基础篇（常用设置、操作）

### 常识、设置、操作

#### 多少分钟后锁屏

![1682254316802](Linux+Shell.assets/1682254316802.png)

![1682254321902](Linux+Shell.assets/1682254321902.png)

#### 常用快捷键及设置

##### super键

![1682254371634](Linux+Shell.assets/1682254371634.png)

![1682254380889](Linux+Shell.assets/1682254380889.png)

##### 创建文本文件

![1682254643770](Linux+Shell.assets/1682254643770.png)

![1682254778387](Linux+Shell.assets/1682254778387.png)

#### 终端

##### 仿真终端

* 打开

  ![1682254883964](Linux+Shell.assets/1682254883964.png)	![1682254890348](Linux+Shell.assets/1682254890348.png)

  ![1682254896359](Linux+Shell.assets/1682254896359.png)

* 小操作

  ![1682255284371](Linux+Shell.assets/1682255284371.png)

* 其他设置

  ![1682255434928](Linux+Shell.assets/1682255434928.png)

  ![1682255448206](Linux+Shell.assets/1682255448206.png)

  ![1682255468583](Linux+Shell.assets/1682255468583.png)

* 常识

  ![1682255569065](Linux+Shell.assets/1682255569065.png)

* 退出终端

  ![1682255600787](Linux+Shell.assets/1682255600787.png)

* 新建标签

  ![1682263343099](Linux+Shell.assets/1682263343099.png)

  ![1682263348712](Linux+Shell.assets/1682263348712.png)

##### 真终端

* Cent OS：		进入终端：Ctrl + Alt + F2~F6 			回到桌面：Ctrl + Alt+ F1

  Ubantu:			进入终端：Ctrl + Alt + F1~F6			 回到桌面：Ctrl + Alt + F7		

  ![1682255024032](Linux+Shell.assets/1682255024032.png)

  ![1682255081602](Linux+Shell.assets/1682255081602.png)

  ![1682255299612](Linux+Shell.assets/1682255299612.png)

#### 汉字输入法设置

![1682257016540](Linux+Shell.assets/1682257016540.png)

![1682257027270](Linux+Shell.assets/1682257027270.png)

![1682257042639](Linux+Shell.assets/1682257042639.png)

![1682257050419](Linux+Shell.assets/1682257050419.png)

输入法切换：super+空格

![1682257088917](Linux+Shell.assets/1682257088917.png)

#### Linux文件与目录

注意不同系统的文件路径

* Windows里面是\ 	此字符在特定情况下要进行转义（如ASCII）
* Linux里面是/

![1682255773783](Linux+Shell.assets/1682255773783.png)

![1682255961413](Linux+Shell.assets/1682255961413.png)

##### 软链接的真实路径

![1682256082552](Linux+Shell.assets/1682256082552.png)

![1682256088612](Linux+Shell.assets/1682256088612.png)

##### 特定的目录

###### sbin

![1682256141067](Linux+Shell.assets/1682256141067.png)

![1682256167304](Linux+Shell.assets/1682256167304.png)

###### lib

![1682256205903](Linux+Shell.assets/1682256205903.png)

![1682256216091](Linux+Shell.assets/1682256216091.png)

###### boot

![1682256232488](Linux+Shell.assets/1682256232488.png)

###### dev

![1682256284934](Linux+Shell.assets/1682256284934.png)

###### etc

![1682256322782](Linux+Shell.assets/1682256322782.png)

###### home

![1682256338379](Linux+Shell.assets/1682256338379.png)

###### root

![1682256354334](Linux+Shell.assets/1682256354334.png)

###### opt

![1682256369979](Linux+Shell.assets/1682256369979.png)

###### media

可移动设备的挂载点

![1682256387575](Linux+Shell.assets/1682256387575.png)

###### mnt

![1682256704116](Linux+Shell.assets/1682256704116.png)

###### proc

![1682256737494](Linux+Shell.assets/1682256737494.png)

###### run

![1682256763053](Linux+Shell.assets/1682256763053.png)

###### srv、sys

![1682256784352](Linux+Shell.assets/1682256784352.png)

###### var

![1682256797069](Linux+Shell.assets/1682256797069.png)

### VIM编辑器

vim		只做文本编辑器

emacs	大而全，啥也能干

![1682257460379](Linux+Shell.assets/1682257460379.png)

![1682260951302](Linux+Shell.assets/1682260951302.png)

#### 一般模式

| 按键         | 功能                                              |
| ------------ | ------------------------------------------------- |
| yy           | 复制一行                                          |
| 8yy<br />y8y | 复制8行                                           |
| p            | 粘贴                                              |
| 5p           | 粘贴五遍（当前行的下一行开始）                    |
| dd           | 删除一行                                          |
| 3dd          | 删除3行                                           |
| u            | 撤回                                              |
| y$           | 复制光标到行尾                                    |
| y^           | 复制光标到首                                      |
| w            | 光标到下一个单词                                  |
| yw           | 复制光标到当前单词尾                              |
| dw           | 删除光标到当前单词尾                              |
| x            | 剪切光标字母                                      |
| X            | 剪切光标前一个字母                                |
| r字符        | 单个字符的替换                                    |
| R            | 替换光标及后面的内容，类似于Windows中的insert模式 |
| $            | 行尾                                              |
| ^            | 行首                                              |
| b            | 跳到（上一个）词头                                |
| gg<br />H    | 文本开头                                          |
| G<br />L     | 文本末行行首                                      |
| 3G           | 第3行行首                                         |

![1682258090145](Linux+Shell.assets/1682258090145.png)

![1682259360802](Linux+Shell.assets/1682259360802.png)

#### 命令模式

| 按键            | 功能                                                         |
| --------------- | ------------------------------------------------------------ |
| :set nu         | 显示行数                                                     |
| :set nonu       | 不显示行数                                                   |
| /字符组         | 查找（被查到的词组会高亮）<br />n    跳转到下一个匹配<br />N    跳转到上一个匹配 |
| :noh            | 去掉搜索后的高亮显示                                         |
| :s/旧词/新词    | 替换光标所在行第一个匹配词                                   |
| :s/旧词/新词/g  | 当前行匹配词全局替换                                         |
| :%s/旧词/新词   | 把每一行的第一个匹配词进行替换                               |
| :%s/旧词/新词/g | 替换全部                                                     |

#### 编辑模式

进入编辑模式

| 按键 | 功能               |
| ---- | ------------------ |
| o    | 插入下一行进行编辑 |
| I    | 当前行行首         |
| A    | 当前行行尾         |
| O    | 插入上一行进行编辑 |

### 网络配置

#### 查看IP和网关

##### Windows

![1682261106682](Linux+Shell.assets/1682261106682.png)

![1682261113856](Linux+Shell.assets/1682261113856.png)

![1682261118386](Linux+Shell.assets/1682261118386.png)

![1682261285318](Linux+Shell.assets/1682261285318.png)

![1682261329000](Linux+Shell.assets/1682261329000.png)

##### Linux

![1682261381854](Linux+Shell.assets/1682261381854.png)

![1682261397328](Linux+Shell.assets/1682261397328.png)

![1682261402732](Linux+Shell.assets/1682261402732.png)

![1682261511166](Linux+Shell.assets/1682261511166.png)

#### 三种网络连接模式

##### 桥接模式

![1682261669490](Linux+Shell.assets/1682261669490.png)

##### NAT模式

![1682261700461](Linux+Shell.assets/1682261700461.png)

![1682261797201](Linux+Shell.assets/1682261797201.png)

![1682261884778](Linux+Shell.assets/1682261884778.png)

#### 虚拟网络设置

![1682262170581](Linux+Shell.assets/1682262170581.png)

![1682262216693](Linux+Shell.assets/1682262216693.png)

![1682262263203](Linux+Shell.assets/1682262263203.png)

##### 个人PC

![1682262302901](Linux+Shell.assets/1682262302901.png)

![1682262283807](Linux+Shell.assets/1682262283807.png)

![1682262295332](Linux+Shell.assets/1682262295332.png)

##### 虚拟机

###### 静态ip配置

![1682262342546](Linux+Shell.assets/1682262342546.png)

![1682262377901](Linux+Shell.assets/1682262377901.png)

![1682262524272](Linux+Shell.assets/1682262524272.png)

![1682262535019](Linux+Shell.assets/1682262535019.png)

![1682262568360](Linux+Shell.assets/1682262568360.png)

![1682262575976](Linux+Shell.assets/1682262575976.png)

###### 配置主机名

* 普通修改文件的方式

  ![1682263105252](Linux+Shell.assets/1682263105252.png)

  ![1682263138014](Linux+Shell.assets/1682263138014.png)

  ![1682263163276](Linux+Shell.assets/1682263163276.png)

* 命令方式

  ![1682263206933](Linux+Shell.assets/1682263206933.png)

  ![1682263223038](Linux+Shell.assets/1682263223038.png)

  ![1682263235547](Linux+Shell.assets/1682263235547.png)

#### hosts

域名劫持就是修改的这里

Linux			/etc/hosts

![1682263484152](Linux+Shell.assets/1682263484152.png)

Windows 	C:\Windows\System32\drivers\etc\hosts

![1682263504424](Linux+Shell.assets/1682263504424.png)

### 远程登录

#### XShell常见问题及设置

##### 字体颜色

![1682264311438](Linux+Shell.assets/1682264311438.png)

##### 快捷方式

![1682264327941](Linux+Shell.assets/1682264327941.png)

##### 复制粘贴

![1682264348895](Linux+Shell.assets/1682264348895.png)

##### Xftp乱码问题

![1682264383022](Linux+Shell.assets/1682264383022.png)

![1682264387639](Linux+Shell.assets/1682264387639.png)

### Linux系统管理

#### 进程与服务

进程

服务：常驻后台

##### Linux服务

![1682264817550](Linux+Shell.assets/1682264817550.png)

##### Windows服务

![1682264870364](Linux+Shell.assets/1682264870364.png)

![1682264876615](Linux+Shell.assets/1682264876615.png)

#### 服务命令

Cent OS 6		service
Cent OS 7		systemctl

target		可以看作是一组服务命令的集合

![1682265205877](Linux+Shell.assets/1682265205877.png)

![1682265228432](Linux+Shell.assets/1682265228432.png)

* 二选一关闭network，保留NetWorkManager服务

  ![1682265238614](Linux+Shell.assets/1682265238614.png)

#### 设置开机自启服务

* 桌面下使用setup![1682265380833](Linux+Shell.assets/1682265380833.png)

  ![1682265409857](Linux+Shell.assets/1682265409857.png)

  ![1682265447680](Linux+Shell.assets/1682265447680.png)

#### 系统运行级别

忘记密码时，可以到运行级别1进行修改密码操作

NFS指网络文件系统

![1682265554130](Linux+Shell.assets/1682265554130.png)

![1682265655378](Linux+Shell.assets/1682265655378.png)

![1682265524089](Linux+Shell.assets/1682265524089.png)

![1682265529026](Linux+Shell.assets/1682265529026.png)

##### 命令

```bash
systemctl get-default		获取运行级别
```

![1682265866635](Linux+Shell.assets/1682265866635.png)

```bash
vim /etc/inittab
```

![1682265914429](Linux+Shell.assets/1682265914429.png)

```bash
init 3             切回终端
```

![1682265956197](Linux+Shell.assets/1682265956197.png)

```bash
init 5         回到桌面
```

查看运行级别

![1682266038016](Linux+Shell.assets/1682266038016.png)

* 更改运行级别![1682266065515](Linux+Shell.assets/1682266065515.png)![1682266073118](Linux+Shell.assets/1682266073118.png)![1682266078443](Linux+Shell.assets/1682266078443.png)

* 服务开机自启以及活跃的设置

  ![1682266157275](Linux+Shell.assets/1682266157275.png)

  ![1682266162521](Linux+Shell.assets/1682266162521.png)

  ![1682266177606](Linux+Shell.assets/1682266177606.png)

* 防火墙

  ![1682266222398](Linux+Shell.assets/1682266222398.png)

  ![1682266227470](Linux+Shell.assets/1682266227470.png)

  ![1682266231904](Linux+Shell.assets/1682266231904.png)

  ![1682266246673](Linux+Shell.assets/1682266246673.png)

  ![1682266253360](Linux+Shell.assets/1682266253360.png)

  ![1682266258724](Linux+Shell.assets/1682266258724.png)

#### 关机命令

![1682266297077](Linux+Shell.assets/1682266297077.png)

![1682266303718](Linux+Shell.assets/1682266303718.png)

## 实操篇（常用基本命令）

### 常识

* dash
  * Debian -> Ubantu
* csh
* bash
  * Bourne-Again Shell
* sh
  * shell解释器的入口
  * ![1683558128212](Linux+Shell.assets/1683558128212.png)
  * ![1683558183111](Linux+Shell.assets/1683558183111.png)

### 常用快捷键

### 帮助命令

#### man获取帮助信息（manual手册）

##### 精细展示

```bash
man [命令或配置文件]
	如
man ls
man cd
```

* 按空格往下翻页
* 按q退出
* ![1683558472189](Linux+Shell.assets/1683558472189.png)

##### 粗略展示

```bash
man -f 内嵌命令
如
man -f cd
```

![1683559574080](Linux+Shell.assets/1683559574080.png)

若要细看上述中的某一项

```bash
如
man 1p cd
只要某部分前缀名字不重复，也可只打前缀
man 3 cd
```

![1683559862916](Linux+Shell.assets/1683559862916.png)

#### help内置命令帮助信息（外置用法不同）

##### type命令查看是否内置命令

常驻系统内存的命令叫内置命令（可用type来查看是否是内置命令）

```bash
type 命令
如
type cd
type ls
```

![1683559090257](Linux+Shell.assets/1683559090257.png)

##### history展示之前敲过的所有命令

```bash
history
```

![1683559261886](Linux+Shell.assets/1683559261886.png)

##### help命令

* 内置

  ```bash
  如
  help cd
  ```

  ![1683560304627](Linux+Shell.assets/1683560304627.png)

* 外置

  ```bash
  ls --help
  ```

  ![1683560382230](Linux+Shell.assets/1683560382230.png)

### 文件目录类

#### pwd

显示当前工作目录的绝对路径

```bash
pwd
```

![1683560911730](Linux+Shell.assets/1683560911730.png)

```bash
#避免软链接对于查看真实目录的干扰
pwd -P
```

![1683731641110](Linux+Shell.assets/1683731641110.png)

#### cd

切换目录

##### 切换到家目录

```bash
cd
或
cd ~
```

![1683561413099](Linux+Shell.assets/1683561413099.png)

![1683561480819](Linux+Shell.assets/1683561480819.png)

##### 切换到上次路径

```bash
cd -
```

![1683561641117](Linux+Shell.assets/1683561641117.png)

##### 进入软链接对应的真实目录

```bash
cd -P lTest
```

![1683731804442](Linux+Shell.assets/1683731804442.png)

#### ls及ll

##### 粗略查看目录

```bash
ls
```

![1683561832212](Linux+Shell.assets/1683561832212.png)

##### 粗略查看并显示隐藏目录

```bash
ls -a
```

![1683561951040](Linux+Shell.assets/1683561951040.png)

##### 查看每个目录的详细信息

```ll
ll
等价于
ls -l
```

![1683562008234](Linux+Shell.assets/1683562008234.png)

##### 查看文件索引号

```bash
#注用vim或vi编辑器后索引号会变
ls -i info
```

![1683730022769](Linux+Shell.assets/1683730022769.png)

##### 查看文件即目录信息包括大小

```bash
ls -lh
```

![1683968107857](Linux+Shell.assets/1683968107857.png)

#### mkdir

##### 创建一级目录

```bash
创建一个一级目录
mkdir a
创建多个一级目录
mkdir b c d
```

![1683564659010](Linux+Shell.assets/1683564659010.png)

##### 创建多级目录

```bash
mkdir -p a/b/c/d
```

![1683564728450](Linux+Shell.assets/1683564728450.png)

#### rmdir

##### 删除空目录

```bash
#删除一个空目录
rmdir b
#删除多个空目录
rmdir c d
```

![1683565203571](Linux+Shell.assets/1683565203571.png)

##### 删除多级空目录

```bash
rmdir -p  a/b/c/d/
```

![1683565260612](Linux+Shell.assets/1683565260612.png)

#### touch

创建空文件

注：vim创建空文件要`:wq`否则不会创建空文件

```bash
touch /home/zhaofengping/mytest.txt
```

![1683565433131](Linux+Shell.assets/1683565433131.png)

#### cp

##### 复制文件

注：`\`是原生命令的意思

```bash
#注：如果重名会有提示
#复制到对应目录下
cp anaconda-ks.cfg /home/zhaofengping/
#复制后改名
cp /root/anaconda-ks.cfg /home/zhaofengping/abc.cfg

#覆盖不提示
\cp anaconda-ks.cfg /home/zhaofengping/
```

![1683566007765](Linux+Shell.assets/1683566007765.png)

![1683566143597](Linux+Shell.assets/1683566143597.png)

![1683566237099](Linux+Shell.assets/1683566237099.png)

![1683566398081](Linux+Shell.assets/1683566398081.png)

* 拓展`\`
  * 如`\ls`与ls的区别

    ![1683647210372](Linux+Shell.assets/1683647210372.png)

##### 递归复制目录

#### rm

##### 删除文件

```bash
#会有提示
rm anaconda-ks.cfg
#加参数 -f 不要提示
rm initial-setup-ks.cfg
```

![1683647340526](Linux+Shell.assets/1683647340526.png)

##### 递归删除目录

```bash
#当删除目录中有文件时，会有提示
rm -r a
#不要提示
rm -rf a
```

![1683647839143](Linux+Shell.assets/1683647839143.png)

![1683647939434](Linux+Shell.assets/1683647939434.png)

#### mv

##### 移动文件或目录

不管有没有重名或者目录里有没有文件，都不会进行提示

```bash
#移动文件
mv mytest.txt /home/zhaofengping/test1/
#移动目录
mv test1 test2
```

##### 重命名

只需移动到当前目录换个名字就好

```bash
mv name1 name2
```

#### cat

单词catch

一般查看较小文件时使用

```bash
#不显示行号展示
cat anaconda-ks.cfg
#显示行号展示
cat -n anaconda-ks.cfg 
```

![1683650788909](Linux+Shell.assets/1683650788909.png)

![1683650805841](Linux+Shell.assets/1683650805841.png)

#### more

文件内容分屏查看器

```bash
more anaconda-ks.cfg
```

操作

| 操作     | 功能                     |
| -------- | ------------------------ |
| 空格键   | 下一页                   |
| 回车键   | 下一行                   |
| q        | 离开more不再查看         |
| Ctrl + F | 向下滚动一屏             |
| Ctrl + B | 返回上一屏               |
| =        | 输出当前行的行号         |
| :f       | 输出文件名和当前行的行号 |

![1683651627199](Linux+Shell.assets/1683651627199.png)

#### less

分屏显示内容，比more更强大，文件大时，只加载一部分

```bash
less 要查看的文件
```

| 操作       | 说明                                               |
| ---------- | -------------------------------------------------- |
| 空格键     | 下一页                                             |
| [pagedown] | 下一页                                             |
| [pageup]   | 上一页                                             |
| /字串      | 向下搜寻『字串』的功能；n：向下查找；N：向上查找； |
| ?字串      | 向上搜寻『字串』的功能；n：向上查找；N：向下查找； |
| q          | 离开less 这个程序                                  |
| G          | 跳到最后                                           |
| g          | 回到开头                                           |

![1683728012066](Linux+Shell.assets/1683728012066.png)

#### echo

输出内容到控制台

```bash
echo 内容
echo -e 支持反斜杠字符串转换
```

![1683652167349](Linux+Shell.assets/1683652167349.png)

#### head

显示文件头部内容

```bash
#查看文件头5行内容
head 文件
#查看文件头4行内容，4可以变
head -n 4  文件
```

![1683652440229](Linux+Shell.assets/1683652440229.png)

#### tail

显示文件尾部内容

```bash
#显示文件尾部5行内容
tail 文件
#显示文件尾部3行内容
tail -n 3 文件

#实时追踪文件的更新 f    follow
#注，不能监控vim或vi改变的文件，因为用vim或vi编辑后会生成新的文件索引号inode
tail -f 文件
```

tail -f  文件   下的操作

| 操作     | 说明     |
| -------- | -------- |
| Ctrl + s | 暂停监控 |
| Ctrl + q | 继续监控 |

![1683652754173](Linux+Shell.assets/1683652754173.png)

#### >与>>

`>`输出重定向，即==覆盖写==

`>>`==追加写==

```bash
ls > 文件
ls >> 文件
cat 文件1 > 文件2
cat 文件1 >> 文件2
echo "内容" >> 文件
```

![1683728600096](Linux+Shell.assets/1683728600096.png)

![1683728610334](Linux+Shell.assets/1683728610334.png)

例子

```bash
# $可以代表环境变量
echo $HOSTNAME >> info
```

![1683729458542](Linux+Shell.assets/1683729458542.png)

#### ln

软链接

通过`ll`查看，列属性第1位是1

![1683730852970](Linux+Shell.assets/1683730852970.png)

```bash
#创建软链接
ln -s [原文件或目录] [软链接名]
#删除软链接
rm -rf 软链接名
#删除软链接真实对应目录下的内容
rm -rf 软链接名/
```

![1683730898346](Linux+Shell.assets/1683730898346.png)

![1683731094832](Linux+Shell.assets/1683731094832.png)

![1683731538159](Linux+Shell.assets/1683731538159.png)

#### history

```bash
#查看目前用户的历史命令
history
#查看最近输入的十条命令
history 10
#调用历史命令
!行号
#清空历史命令
history -c
```

![1683732617272](Linux+Shell.assets/1683732617272.png)

![1683732648387](Linux+Shell.assets/1683732648387.png)

![1683732733701](Linux+Shell.assets/1683732733701.png)

![1683732821330](Linux+Shell.assets/1683732821330.png)

#### wc

word count

获取文件详细大小信息

```bash
wc anaconda-ks.cfg
```

![1683972239577](Linux+Shell.assets/1683972239577.png)

#### tree

查看目录结构

```bash
#要先安装tree
yum install tree
#查看目录结构
tree
```

![1683985468625](Linux+Shell.assets/1683985468625.png)

#### du

```bash
#列出当前目录及其子目录的所有目录及文件
du
```

![1683985614815](Linux+Shell.assets/1683985614815.png)

![1683985641668](Linux+Shell.assets/1683985641668.png)



### 时间日期类

#### date

##### 显示当前时间

注：M分钟数，m月份

```bash
#显示当前时间
date
#显示当前年份
date +%Y
#显示当前月份
date +%m
#显示当前是哪一天
date +%d
#显示当前年月日时分秒
date "+%Y-%m-%d %H:%M:%S"
#当前时间戳
date +%s
```

![1683733532843](Linux+Shell.assets/1683733532843.png)

![1683733664324](Linux+Shell.assets/1683733664324.png)

##### 显示非当前时间

```bash
#显示前一天时间
date -d "1 days ago"
#显示明天时间
date -d "-1 days ago"
#显示下一小时时间
date -d "-1 hours ago"
#显示下一周时间
date -d "-1 weeks ago"
#显示下一年时间
date -d "-1 years ago"
```

![1683734194201](Linux+Shell.assets/1683734194201.png)

##### 设置系统时间

```bash
#设置当前系统时间为
date -s "2017-06-19 20:52:18"
#同步时间，向某服务器 -u参数可以越过防火墙与主机同步           ntp.api.bz      NTP服务器(上海)
ntpdate time.nist.gov
```

![1683735788806](Linux+Shell.assets/1683735788806.png)

#### cal

```bash
#显示本月日历
cal
#显示前后加本月
cal -3
#显示2022年的日历
cal 2022
#显示本年度日历
cal -y
```

![1683736880561](Linux+Shell.assets/1683736880561.png)

![1683736925023](Linux+Shell.assets/1683736925023.png)

![1683736948291](Linux+Shell.assets/1683736948291.png)

### 用户管理命令

#### useradd

添加用户

```bash
#添加tony用户，会在home文件夹下看到tony文件夹
useradd tony
#添加test用户，并制定/home/test2为其家用户
useradd -d /home/test2 test
```

![1683737470641](Linux+Shell.assets/1683737470641.png)

#### passwd

设置用户密码

```bash
#设置或修改用户tony的密码，密码实际上可以少于8个字符
passwd tony
```

![1683737608074](Linux+Shell.assets/1683737608074.png)

#### id

```bash
#查看tony用户是否存在
id tony
```

![1683738071173](Linux+Shell.assets/1683738071173.png)

```bash
#查看创建了哪些用户
cat /etc/passwd
```

![1683738235149](Linux+Shell.assets/1683738235149.png)

![1683738295760](Linux+Shell.assets/1683738295760.png)

#### su

switch user

```bash
#切换用户，只能获得用户的执行权限，不能获得环境变量
su zhaofengping
#切换到用户并获得该用户的环境变量及执行权限
su - zhaofengping
```

![1683738531783](Linux+Shell.assets/1683738531783.png)

#### userdel

```bash
#删除用户但保存用户主目录
userdel tony
#用户和用户主目录，都删除
userdel tony
```

![1683738687532](Linux+Shell.assets/1683738687532.png)

#### who

查看用户登录信息

```bash
#显示自身用户名称
whoami
#显示登录用户的用户名以及登陆时间
who am i
```

![1683738967843](Linux+Shell.assets/1683738967843.png)

#### sudo

设置普通用户具有root权限

##### 需要输密码

![1683739519285](Linux+Shell.assets/1683739519285.png)

![1683739476276](Linux+Shell.assets/1683739476276.png)

##### 不需要数密码

![1683739553466](Linux+Shell.assets/1683739553466.png)

![1683739588906](Linux+Shell.assets/1683739588906.png)

#### usermod

修改用户的初始登录组

```bash
#修改后的用户组  要修改组的用户名
usermod -g root tony
```

![1683739895119](Linux+Shell.assets/1683739895119.png)

### 用户组管理命令

组的增加、删除和修改实际上就是对`/etc/group`文件的更新。

#### groupadd

```bash
groupadd softwareTest
```

![1683740213507](Linux+Shell.assets/1683740213507.png)

![1683740231785](Linux+Shell.assets/1683740231785.png)

#### groupdel

删除组

```bash
groupdel softwareTest
```

![1683740352021](Linux+Shell.assets/1683740352021.png)

![1683740362489](Linux+Shell.assets/1683740362489.png)

#### groupmod

修改组名

```bash
groupmod softwareT softwareTest
```

![1683740692290](Linux+Shell.assets/1683740692290.png)

![1683740714247](Linux+Shell.assets/1683740714247.png)

### 文件权限类

![1683823114077](Linux+Shell.assets/1683823114077.png)

![1683822107872](Linux+Shell.assets/1683822107872.png)

* 链接数：
  * 如果是文件，指硬链接数
  * 如果是目录，指子文件夹个数

#### chmod

改变所有者

```bash
# a代表所有人
chmod [{ugoa}{+-=}{rwx}] 文件或目录
    #把权限的数字看作二进制数,类似8421码
chmod [mode=421 ] [文件或目录]

#如
chmod u+x abc.cfg
chmod 777 abc.cfg
#修改test文件夹里所有文件的权限
chmod -R 777 /home/zhaofengping/test/
```

![1683823444564](Linux+Shell.assets/1683823444564.png)

![1683823520425](Linux+Shell.assets/1683823520425.png)

![1683823590961](Linux+Shell.assets/1683823590961.png)

![1683823864418](Linux+Shell.assets/1683823864418.png)

#### chown

改变所有者

```bash
#改变所有者
chown zhaofengping abc.cfg
#改变所属者和所属组
chown zhaofengping:zhaofengping anaconda-ks.cfg
#递归改变某文件夹下的文件所属者和所属组
chown -R zhaofengping:zhaofengping test/
```

![1683824146771](Linux+Shell.assets/1683824146771.png)

![1683824304688](Linux+Shell.assets/1683824304688.png)

![1683824618153](Linux+Shell.assets/1683824618153.png)

#### chgrp

改变所属组

```bash
chgrp zhaofengping abc.cfg
```

![1683824770689](Linux+Shell.assets/1683824770689.png)

![1683824790610](Linux+Shell.assets/1683824790610.png)

### 搜索查找类

#### find

将从指定目录向下递归地遍历其各个子目录，将满足条件的文件显示在终端

```bash
#搜索范围不指定的话，从当前目录开始找
find [搜索范围] [选项]
```

选项说明

| 选项            | 说明                                                         |
| --------------- | ------------------------------------------------------------ |
| -name<查询方式> | 按照指定的文件名查找模式查找文件                             |
| -user<用户名>   | 查找属于指定用户名所有文件                                   |
| -size<文件大小> | 按照指定的文件大小查找文件,单位为:<br />**b** —— 块（512 字节）<br />**c** —— 字节<br />**w** —— 字（2 字节）<br />**k** —— 千字节<br />**M** —— 兆字节<br />**G** —— 吉字节 |

```bash
#查找指定目录及其字目录下的.txt文件
find /root/ -name "*.txt"
#查找指定目录下大于1k的文件
find /home/zhaofengping -size +1k
#查找当前目录下指定用户所属名的文件
find -user zhaofengping
```

![1683825345735](Linux+Shell.assets/1683825345735.png)

![1683968288447](Linux+Shell.assets/1683968288447.png)

![1683969692409](Linux+Shell.assets/1683969692409.png)

#### locate

利用事先建立的系统中所有文件名称及路径的 locate 数据库实现快速定位给定的文件。

一般情况下这个数据库会每天更新一次。

```bash
#手动更新该数据库
updatedb
#定位tmp相关的文件
loacte tmp
```

![1683970252749](Linux+Shell.assets/1683970252749.png)

#### which和whereis

##### which

找寻命令所在的文件位置

```bash
which ls
which locate
which which
```

![1683970540891](Linux+Shell.assets/1683970540891.png)

##### whereis

用于查找指定命令的二进制程序、源代码文件以及man页面文件的位置

通常被用于快速查找某个程序或命令的安装位置

```bash
whereis locate
```

![1683971364373](Linux+Shell.assets/1683971364373.png)

#### grep及“|”

管道符，“|”，表示将前一个命令的处理结果输出传递给后面的命令处理

grep 查找或过滤出文件中的关键字

| 选项 | 说明                             |
| ---- | -------------------------------- |
| -i   | 忽视大小写                       |
| -m   | 后跟数字，表示取过滤后的第几行   |
| -n   | 显示过来吧后的行在源文件中的行数 |

```bash
grep -n graphical anaconda-ks.cfg

ls | grep .cfg

grep -n graphical anaconda-ks.cfg | wc
```

![1683971535276](Linux+Shell.assets/1683971535276.png)

![1683972143801](Linux+Shell.assets/1683972143801.png)

![1683972774785](Linux+Shell.assets/1683972774785.png)

### 压缩和解压类

#### gzip和ungzip

* 只能压缩和解压.gz文件

* 不保留原来文件

* 同时多个文件会产生多个压缩包

```bash
gzip anaconda-ks.cfg

gunzip anaconda-ks.cfg.gz
```

![1683973154357](Linux+Shell.assets/1683973154357.png)

#### zip和unzip

```bash
#选项 -r 是压缩目录
zip -r myroot.zip /root
#选项 -d 解压到指定目录
unzip -d /tmp/ myroot.zip
#解压到当前目录下，一个叫原名的目录里面
unzip myroot.zip
```

![1683973902678](Linux+Shell.assets/1683973902678.png)

![1683973921804](Linux+Shell.assets/1683973921804.png)

![1683975133700](Linux+Shell.assets/1683975133700.png)

![1683975157163](Linux+Shell.assets/1683975157163.png)

#### tar打包

tar [选项] XXX.tar.gz 将要打包进去的内容      （功能描述：打包目录，压缩后的文件格式.tar.gz）

| 选项 | 功能               |
| ---- | ------------------ |
| -c   | 产生.tar 打包文件  |
| -v   | 显示详细信息       |
| -f   | 指定压缩后的文件名 |
| -z   | 打包同时压缩       |
| -x   | 解包.tar 文件      |
| -C   | 解压到指定目录     |

```bash
#将文件anaconda-ks.cfg、文件abc.cfg以及目录 公共打包进temp.tar.gz中
tar -zcvf temp.tar.gz anaconda-ks.cfg abc.cfg 公共/
#解压到当前目录，直接解压
tar -zxvf temp.tar.gz
#解压到/tmp/目录下
tar -zxvf temp.tar.gz -C /tmp
```

![1683984293901](Linux+Shell.assets/1683984293901.png)

![1683984619152](Linux+Shell.assets/1683984619152.png)

### 磁盘查看和分区类

几个分区

/boot

/swap

/

#### du

显示目录下每个子目录的磁盘使用情况

```bash
du   目录/文件
```

| 选项          | 功能                                                      |
| ------------- | --------------------------------------------------------- |
| -h            | 以人们较易阅读的GBytes, MBytes,   KBytes 等格式自行显示； |
| -a            | 不仅查看子目录大小，还要包括文件                          |
| -c            | 显示所有的文件和子目录大小后，显示总和                    |
| -s            | 只显示总和                                                |
| --max-depth=n | 指定统计子目录的深度为第 n 层                             |

```bash
#查看目录及其子目录下的目录、文件所占大小
du
#用M、K、G显示
du -ah
#显示总和
du -sh
#只显示下面一级的子目录或子实现
 du --max-depth=1 -ah
```

![1683985980853](Linux+Shell.assets/1683985980853.png)

![1683986016833](Linux+Shell.assets/1683986016833.png)

![1683986223557](Linux+Shell.assets/1683986223557.png)

![1683986243335](Linux+Shell.assets/1683986243335.png)

![1683986264392](Linux+Shell.assets/1683986264392.png)

![1683988233377](Linux+Shell.assets/1683988233377.png)

![1683988337411](Linux+Shell.assets/1683988337411.png)

#### df

查看磁盘使用空间情况

列出文件系统的整体磁盘使用量，检查文件系统的磁盘空间占用情况

```bash
#选项-h    较易阅读的GBytes, MBytes, KBytes 等格式自行显示
df -h 
```

![1683988614438](Linux+Shell.assets/1683988614438.png)

* /dev/shm
  * share memory，交换分区，默认系统内存的一半
* /dev
  * 一开始启动的时候就会创建

#### free

```bash
free -h
```

![1683988879175](Linux+Shell.assets/1683988879175.png)

#### lsblk

查看设备挂载情况

```bash
lsblk
#查看详细的设备挂载情况，显示文件系统信息
lsblk -f
```

![1683989144049](Linux+Shell.assets/1683989144049.png)

![1683989196106](Linux+Shell.assets/1683989196106.png)

* 硬盘类型
  * hda
  * vda
  * sda
    * SCSI与SATA
    * 最后一个字母a、b、c等代表第几块硬盘
    * 分区还会在后面加1、2、3等

![1683991897644](Linux+Shell.assets/1683991897644.png)

#### mount及unmount

##### 基本使用

挂载与卸载

将一个分区和一个目录联系起来

挂载前提：必须有光盘或者已经连接镜像

![1683992439142](Linux+Shell.assets/1683992439142.png)

![1683992529857](Linux+Shell.assets/1683992529857.png)

![1683992587693](Linux+Shell.assets/1683992587693.png)

![1683992639834](Linux+Shell.assets/1683992639834.png)

![1683992735515](Linux+Shell.assets/1683992735515.png)

注：桌面情况下，弹出光盘时，顺便就断开了连接，要想弹出光盘，又连接光盘，那么需小注销root用户，在锁屏情况下进行设置。

![1683993819000](Linux+Shell.assets/1683993819000.png)

```bash
#挂载
mount /dev/cdrom /mnt/cdrom/
# /dev/cdrom与/mnt/cdrom都可以
unmount /dev/cdrom
```

![1683996176871](Linux+Shell.assets/1683996176871.png)

![1683996382082](Linux+Shell.assets/1683996382082.png)

##### 设置开机自动挂载

`/etc/fstab`

![1683996912934](Linux+Shell.assets/1683996912934.png)

* kdump
  * 是否做备份
* fsck
  * 检查文件系统的命令
  * 开机会自动启动，按照第二个参数来进行优先级检查（文件系统检查的优先级）
    * 0表示开机时不检查
    * 越小越大

#### fdisk

##### 查看分区详情

```bash
#查看分区详情
fdisk -l
```

![1683997779410](Linux+Shell.assets/1683997779410.png)

##### 添加硬盘块

![1683997912971](Linux+Shell.assets/1683997912971.png)

![1683997927278](Linux+Shell.assets/1683997927278.png)

![1683997938087](Linux+Shell.assets/1683997938087.png)

![1683997947909](Linux+Shell.assets/1683997947909.png)

![1683997958570](Linux+Shell.assets/1683997958570.png)

![1683997967227](Linux+Shell.assets/1683997967227.png)

​	![1683998013149](Linux+Shell.assets/1683998013149.png)

```bash
#有新的硬盘必须要重启才行，不像光盘可以热启动、热插拔
reboot
```

![1683998316121](Linux+Shell.assets/1683998316121.png)

##### 对硬盘进行分区操作

```bash
#进入操作命令
fdisk /dev/sdb
```

![1683998838359](Linux+Shell.assets/1683998838359.png)

![1683999000541](Linux+Shell.assets/1683999000541.png)

#### mkfs

指定文件系统

```bash
mkfs -t xfs /dev/sdb1
```

![1683999195518](Linux+Shell.assets/1683999195518.png)

![1683999289809](Linux+Shell.assets/1683999289809.png)

```bash
#指定文件系统后就可以进行挂载了
mount /dev/sdb1 /home/tony/
```

![1683999455946](Linux+Shell.assets/1683999455946.png)

![1683999631226](Linux+Shell.assets/1683999631226.png)

### 进程管理类

#### ps

> 不建议用不合理的写法，虽然有时候能正确运行
>
> `ps -aux`	假如系统里面真的有个叫x的用户，就只显示x用户相关的进程了。

带`-`的是UNIX风格，不带的是BSD风格

| 选项 | 功能                                           |
| ---- | ---------------------------------------------- |
| a    | 列出带有终端的所有用户的进程，后台服务也不显示 |
| x    | 列出当前用户的所有进程，包括没有终端的进程     |
| u    | 面向用户友好的显示风格                         |
| -e   | 列出所有进程                                   |
| -u   | 列出某个用户关联的所有进程                     |
| -f   | 显示完整格式的进程列表                         |

```bash
#只显示与当前用户相关、以及终端控制台相关的进程
ps
#查看系统中所有进程
ps aux
```

![1684000066168](Linux+Shell.assets/1684000066168.png)

##### `ps aux`显示信息说明

常用于查看进程的 CPU 占用率和内存占用率

概述补充：

* 1号进程systemd，叫初始进程，早期版本是init
* 2号进程kthreadd，负责所有内核线程管理的一个进程
* 11号进程watchdog，一旦系统出现锁死、死机的状态，系统就会重启。用来检测系统运行的状态

![1684000604811](Linux+Shell.assets/1684000604811.png)

* USER：该进程是由哪个用户产生的 PID：进程的 ID 号
* %CPU：该进程占用 CPU 资源的百分比，占用越高，进程越耗费资源；
* %MEM：该进程占用物理内存的百分比，占用越高，进程越耗费资源； 
* VSZ：该进程占用虚拟内存的大小，单位 KB；
  * 有一些页面如果长时间没有用到的话，就直接把它换到虚拟内存里面去了。经常使用的才保留在物理内存里面。
* RSS：该进程占用实际物理内存的大小，单位 KB；
* TTY：该进程是在哪个终端中运行的。对于 CentOS  来说，tty1  是图形化终端，
* tty2-tty6 是本地的字符界面终端。pts/0-255 代表虚拟终端。
* STAT：进程状态。常见的状态有：
  * R：运行状态、
  * S：睡眠状态、
  * T：暂停状态、  
  * Z：僵尸状态、
  * s：包含子进程、
  * l：多线程、
  * +：前台显示
  * `<`进程优先级很高
  * `N`进程优先级比较低
* START：该进程的启动时间
* TIME：该进程占用 CPU 的运算时间，注意不是系统时间
* COMMAND：产生此进程的命令名

##### `ps -ef`显示信息说明

常用于看进程的父进程 ID 

![1684000956954](Linux+Shell.assets/1684000956954.png)

* UID：用户 ID 
* PID：进程 ID 
* PPID：父进程 ID
* C：CPU 用于计算执行优先级的因子。
  * 数值越大，表明进程是 CPU 密集型运算，执行优先级会降低；
  * 数值越小，表明进程是 I/O 密集型运算，执行优先级会提高 
* STIME：进程启动的时间
* TTY：完整的终端名称 TIME：CPU 时间
* CMD：启动进程所用的命令和参数

##### 简单介绍sshd

用来连接远程终端的服务

```bash
ps -ef | grep sshd
#查看当前终端相关的进程
ps -f
```

![1684001674657](Linux+Shell.assets/1684001674657.png)

* `[priv]`主要是用来做权限分离的

![1684001785690](Linux+Shell.assets/1684001785690.png)

![1684336541261](Linux+Shell.assets/1684336541261.png)

#### kill

终止进程

```bash
#选项-9表示强迫进程立即停止
kill -9 进程号

killall 进程名
```

#### pstree

查看进程树

```bash
pstree
#-p   显示进程的pid
pstree -p
#-u	显示进程的所属用户
pstree -u
```

![1684002437949](Linux+Shell.assets/1684002437949.png)

![1684002462364](Linux+Shell.assets/1684002462364.png)

![1684002494133](Linux+Shell.assets/1684002494133.png)

![1684002524474](Linux+Shell.assets/1684002524474.png)

#### top

实时监控系统进程状态

```bash
top [选项]

top -i
top -p 2575
```

##### 选项说明

|  选项   | 功能                                                         |
| :-----: | ------------------------------------------------------------ |
| -d 秒数 | 指定 top 命令每隔几秒更新。默认是 3 秒在 top 命令的交互模式当   中可以执行的命令： |
|   -i    | 使 top 不显示任何闲置或者僵死进程。                          |
|   -p    | 通过指定监控进程 ID 来仅仅监控某个进程的状态。               |

使用`-i`时，头行S下未必显示的都是R，有可能显示的都是S。有可能占了一下CPU又睡了。

##### 操作说明

| 操作 | 功能                                 |
| ---- | ------------------------------------ |
| P    | 以 CPU 使用率排序，默认就是此项      |
| M    | 以内存的使用率排序                   |
| N    | 以 PID 排序                          |
| q    | 退出 top                             |
| u    | 切换用户（根据提示输入用户名后回车） |

支持上下键、翻页键

* 按u

  ![1684004142255](Linux+Shell.assets/1684004142255.png)

  输入用户名后回车

  ![1684004161777](Linux+Shell.assets/1684004161777.png)

* 按k

  ![1684004218267](Linux+Shell.assets/1684004218267.png)

  输入进程号回车

  ![1684004255238](Linux+Shell.assets/1684004255238.png)

  输入9强制杀死

##### 查询字段解释

![1684002903794](Linux+Shell.assets/1684002903794.png)

* 第一行信息为任务队列信息

  | 内容                             | 说明                                                         |
  | -------------------------------- | ------------------------------------------------------------ |
  | 12:26:46                         | 系统当前时间                                                 |
  | up 1 day, 13:32                  | 系统的运行时间，本机已经运行 1 天   13 小时 32 分钟          |
  | 2 users                          | 当前登录了两个用户                                           |
  | load average: 0.00,   0.00, 0.00 | 系统在之前 1 分钟，5 分钟，15 分钟的平均负载。一般认为小于 1 时，负载较小。如果大于   1，系统已经超出负荷。 |

* 第二行为进程信息

  |                 | 说明                                       |
  | --------------- | ------------------------------------------ |
  | Tasks: 95 total | 系统中的进程总数                           |
  | 1 running       | 正在运行的进程数                           |
  | 94 sleeping     | 睡眠的进程                                 |
  | 0 stopped       | 正在停止的进程                             |
  | 0 zombie        | 僵尸进程。如果不是 0，需要手工检查僵尸进程 |

* 第三行为 CPU 信息

  |                | 说明                                                         |
  | :------------: | ------------------------------------------------------------ |
  | Cpu(s): 0.1%us | 用户模式占用的 CPU 百分比   （没有更改优先级的用户进程）     |
  |     0.1%sy     | 系统模式占用的 CPU 百分比                                    |
  |     0.0%ni     | 改变过优先级的用户进程占用的 CPU 百分比   （nice调整优先级顺序之后的进程） |
  |    99.7%id     | 空闲 CPU 的 CPU 百分比   （idle空闲）                        |
  |     0.1%wa     | 等待输入/输出的进程的占用 CPU   百分比   （wait IO）         |
  |     0.0%hi     | 硬中断请求服务占用的 CPU   百分比                            |
  |     0.1%si     | 软中断请求服务占用的 CPU   百分比                            |
  |     0.0%st     | st（Steal   time）虚拟时间百分比。就是当有虚拟机时，虚拟CPU 等待实际CPU 的时间百分比。 |

* 第四行为物理内存信息

  |                      | 说明                                                         |
  | -------------------- | ------------------------------------------------------------ |
  | Mem:   625344k total | 物理内存的总量，单位 KB                                      |
  | 571504k used         | 已经使用的物理内存数量                                       |
  | 53840k free          | 空闲的物理内存数量，我们使用的是虚拟机，总共只分配了 628MB 内存，所以只有 53MB 的空   闲内存了 |
  | 65800k buffers       | 作为缓冲的内存数量                                           |

* 第五行为交换分区（swap）信息

  |                     | 说明                         |
  | ------------------- | ---------------------------- |
  | Swap: 524280k total | 交换分区（虚拟内存）的总大小 |
  | 0k used             | 已经使用的交互分区的大小     |
  | 524280k free        | 空闲交换分区的大小           |
  | 409280k cached      | 作为缓存的交互分区的大小     |

* 头行解释
  * VIRT：虚拟内存
  * RES：实际内存
  * SHR：共享内存
  * S：状态

#### netstat

显示网络状态和端口号占用信息

* 选项说明

  | 选项 | 功能                                                 |
  | ---- | ---------------------------------------------------- |
  | -a   | 显示所有正在监听（listen）和未监听的套接字（socket） |
  | -n   | 拒绝显示别名，能显示数字的全部转化成数字             |
  | -l   | 仅列出在监听的服务状态                               |
  | -p   | 表示显示哪个进程在调用                               |

```bash
#查看该进程网络信息
netstat -anp | grep 进程号
#查看网络端口号占用情况
netstat -nlp | grep 端口号
```

![1684004711046](Linux+Shell.assets/1684004711046.png)

* 头行解释
  * Recv-Q：已经被接收到，但是还没有被拷贝出来的数量
  * Send-Q：已经发出去，但是远程主机还没有确认收到的数量

### contab系统定时任务

```bash
crontab [选项]
#进入编辑页面编辑任务
crontab -e
#查询 crontab 任务
crontab -l
#删除当前用户所有的 crontab 任务
crontab -r
```

选项说明

| 选项 | 功能                            |
| ---- | ------------------------------- |
| -e   | 编辑 crontab 定时任务           |
| -l   | 查询 crontab 任务               |
| -r   | 删除当前用户所有的 crontab 任务 |

* 执行任务* * * * *

  | 项目      | 含义                 | 范围                            |
  | --------- | -------------------- | ------------------------------- |
  | 第一个“*” | 一小时当中的第几分钟 | 0-59                            |
  | 第二个“*” | 一天当中的第几小时   | 0-23                            |
  | 第三个“*” | 一个月当中的第几天   | 1-31                            |
  | 第四个“*” | 一年当中的第几月     | 1-12                            |
  | 第五个“*” | 一周当中的星期几     | 0-7 （ 0 和 7 都代表星期   日） |

* 特殊符号

  | 特殊符号 | 含义                                                         |
  | -------- | ------------------------------------------------------------ |
  | *        | 代表任何时间。比如第一个“*”就代表一小时中每分钟   都执行一次的意思。 |
  | ，       | 代表不连续的时间。比如“0 8,12,16 * * * 命令”，就代表   在每天的 8 点 0 分，12 点 0 分，16 点 0 分都执行一次命令 |
  | -        | 代表连续的时间范围。比如“0 5 * * 1-6 命令”，代表在   周一到周六的凌晨 5 点 0 分执行命令 |
  | */n      | 代表每隔多久执行一次。比如“*/10 * * * * 命令”，代   表每隔 10 分钟就执行一遍命令 |

* 特定时间执行命令

  | 时间                | 含义                                                         |
  | ------------------- | :----------------------------------------------------------- |
  | 45 22 * * * 命令    | 每天 22 点 45 分执行命令                                     |
  | 0 17 * * 1   命令   | 每周 1 的 17 点 0 分执行命令                                 |
  | 0 5 1,15   * * 命令 | 每月 1 号和 15 号的凌晨 5 点 0 分执行命令                    |
  | 40 4 * * 1-5 命令   | 每周一到周五的凌晨 4 点 40 分执行命令                        |
  | */10 4 * * * 命令   | 每天的凌晨 4 点，每隔 10 分钟执行一次命令                    |
  | 0 0 1,15   * 1 命令 | 每月   1 号和   15 号，每周   1   的 0 点 0 分都会执行命令。注   意：星期几和几号最好不要同时出现，因为他们定义的都是天。非常容易让管理员混乱。 |

![1684005916880](Linux+Shell.assets/1684005916880.png)

![1684005828243](Linux+Shell.assets/1684005828243.png)

每一分钟会往hello文件里写一次hello word

![1684005891988](Linux+Shell.assets/1684005891988.png)

![1684006147507](Linux+Shell.assets/1684006147507.png)

### 软件管理包

> 注：软件包之间可能会有依赖

#### RPM

RedHat Package Manager，RedHat软件管理工具。Ubantu中叫apt

RPM包的名称格式 Apache-1.3.23-11.i386.rpm

* “apache” 软件名
* “1.3.23-11”软件的版本号，主版本和此版本
* i386”是软件所运行的硬件平台，Intel  32位处理器的统称
* “rpm”文件扩展名，代表RPM包

```bash
#查询安装的所有 rpm 软件包
rpm -qa
rpm -qa | grep firefox

#查询详细信息
rpm -qi firefox

#卸载命令
rpm -e 软件包名
#卸载软件时，不检查依赖。这样的话，那些使用该软件包的软件在此之后可能就不能正常工作了。
rpm -e --nodeps软件包

#安装命令
rpm -ivh RPM 包全名
```

选项说明

| 选项     | 功能                    |
| -------- | ----------------------- |
| -i       | install，安装           |
| -v       | --verbose，显示详细信息 |
| -h       | --hash，进度条          |
| --nodeps | 安装前不检查依赖        |

![1684160475110](Linux+Shell.assets/1684160475110.png)

![1684160786205](Linux+Shell.assets/1684160786205.png)

![1684160994768](Linux+Shell.assets/1684160994768.png)

![1684161397842](Linux+Shell.assets/1684161397842.png)

#### YUM

Yellow dog Updater, Modified

基于 RPM 包管理，能够从指定的服务器自动下载 RPM 包并且安装，可以自动处理依赖性关系

```bash
yum [选项] [参数]

#显示软件包信息
yum list | grep firefox
#删除指定的 rpm 软件包
yum remove firefox
#下载安装
yum -y install firefox
```

选项说明

| 选项 | 功能                  |
| ---- | --------------------- |
| -y   | 对所有提问都回答“yes” |

参数说明

| 参数         | 功能                              |
| ------------ | --------------------------------- |
| install      | 安装 rpm 软件包                   |
| update       | 更新 rpm 软件包                   |
| check-update | 检查是否有可用的更新 rpm   软件包 |
| remove       | 删除指定的 rpm 软件包             |
| list         | 显示软件包信息                    |
| clean        | 清理 yum 过期的缓存               |
| deplist      | 显示 yum 软件包的所有依赖关系     |

![1684161887228](Linux+Shell.assets/1684161887228.png)

![1684162034149](Linux+Shell.assets/1684162034149.png)

![1684162533110](Linux+Shell.assets/1684162533110.png)

```bash
#修改网络YUM源

#安装 wget, wget 用来从指定的 URL 下载文件
yum install wget
#在/etc/yum.repos.d/目录下，备份默认的 repos 文件
cp CentOS-Base.repo CentOS-Base.repo.backup
#下载aliyun的repos文件
wget http://mirrors.aliyun.com/repo/Centos-7.repo
#使用下载好的 repos 文件替换默认的 repos 文件
 mv Centos-7.repo CentOS-Base.repo
 #清理旧缓存数据
 yum clean all
 #把服务器的包信息下载到本地电脑缓存起来
 yum makecache
 #测试
yum list | grep firefox
```

![1684162693313](Linux+Shell.assets/1684162693313.png)

![1684163007626](Linux+Shell.assets/1684163007626.png)

![1684163682034](Linux+Shell.assets/1684163682034.png)

## 克隆

### 克隆虚拟机

克隆时需要关闭虚拟机

![1684163782804](Linux+Shell.assets/1684163782804.png)

![1684163788583](Linux+Shell.assets/1684163788583.png)

![1684163809955](Linux+Shell.assets/1684163809955.png)

![1684163932238](Linux+Shell.assets/1684163932238.png)

![1684163941136](Linux+Shell.assets/1684163941136.png)

![1684163950799](Linux+Shell.assets/1684163950799.png)

![1684164088787](Linux+Shell.assets/1684164088787.png)

![1684164214189](Linux+Shell.assets/1684164214189.png)

### 需要改ip

```bash
#修改ip
vim /etc/sysconfig/network-scripts/ifcfg-ens33
#network和NetworkManager服务我们二选一，选择NetworkManager所以停掉network
systemctl stop network
#重启服务
systemctl restart NetworkManager
#查看ip是否改变
ifconfig
```

![1684165731921](Linux+Shell.assets/1684165731921.png)

![1684165831454](Linux+Shell.assets/1684165831454.png)

### 设置主机名

```bash
#立即生效，不需要重启
hostanmectl set-hostname node101
```

![1684166073187](Linux+Shell.assets/1684166073187.png)

# Shell

## 源

### 文档

* [<font color="violet">高级技术之Shell.docx</font>](./相关资料/高级技术之Shell.docx)

### drawio

* 

## 概述

![1684168312075](Linux+Shell.assets/1684168312075.png)

### 解析器

Linux提供的Shell解析器有

```bash
cat /etc/shells
```

![1684168557771](Linux+Shell.assets/1684168557771.png)

sh是bash的软链接

![1684168671685](Linux+Shell.assets/1684168671685.png)

CentOS的默认解析器就是bash

![1684168739410](Linux+Shell.assets/1684168739410.png)

### 脚本的执行方式

hello.sh

![1684169438472](Linux+Shell.assets/1684169438472.png)

#### bash或sh命令

```bash
bash hello.sh
 sh hello.sh
```

![1684169409397](Linux+Shell.assets/1684169409397.png)

#### 绝对路径或相对路径执行脚本

此方式脚本文件必须有执行权限

![1684169576091](Linux+Shell.assets/1684169576091.png)

```bash
#绝对路径
/home/zhaofengping/scripts/hello.sh
#相对路径
scripts/hello.sh
./hello.sh
#注：在改文件的目录下不能使用文件名  只能用./的相对路径（如上）
hello.sh	#错
```

![1684169640856](Linux+Shell.assets/1684169640856.png)

![1684169836141](Linux+Shell.assets/1684169836141.png)

#### `.`或source

前两种方式都会开子shell来运行。而该方式不开子shell。

每次要修改完/etc/profile 文件以后，需要 source一下的原因。

开子 shell 与不开子 shell 的区别就在于，环境变量的继承关系，如在子shell 中设置的当前变量，父shell 是不可见的。（即生效的作用范围是不一样的）

```bash
source hello.sh
. hello.sh
```

* source借鉴了csh
* .借鉴了bash

将对应的脚本文件复制到`/bin/`或`/sbin/`目录后，也可以相对目录下直接用脚本文件名执行。

* bin -> /usr/bin
* sbin -> /usr/sbin

![1684344171279](Linux+Shell.assets/1684344171279.png)

### 父子shell说明

```bash
#用来查看与当前终端相关的进程
ps -f
#相当于开了一个子shell
bash
```

![1684336815629](Linux+Shell.assets/1684336815629.png)

![1684337100634](Linux+Shell.assets/1684337100634.png)

#### 子shell可查看在父shell定义的全局变量

* 终端

![1684337647959](Linux+Shell.assets/1684337647959.png)

* shell脚本

  hello.sh

  ![1684341977395](Linux+Shell.assets/1684341977395.png)

  ![1684341936381](Linux+Shell.assets/1684341936381.png)

* 除了export方式升为全局变量，还可以用`.`或`source`的方式将脚本拉入父shell执行，就不存在变量环境的问题了。

  ![1684342448294](Linux+Shell.assets/1684342448294.png)

  ![1684342428038](Linux+Shell.assets/1684342428038.png)

#### 子shell中更改全局变量，父shell中的全局变量不变

```bash
my_var='Hello, Word'
export my_var	#变为全局变量
bash	#进入子shell
my_var="Hello   Linux"
##########
#中途即使将my_var提升为全局变量也不会变
export my_var
##########
echo my_var
exit
echo $my_var
```

![1684339303448](Linux+Shell.assets/1684339303448.png)

![1684341458170](Linux+Shell.assets/1684341458170.png)



## 变量

几个概念：全局变量、局部变量、系统变量、用户变量

```bash
#查看当前定义的全部变量
set | less

#撤销自定义变量，
unset 变量名
##################################################
#注：无法撤销只读变量
readonly b=5
unset b
###################################################
```

![1684343305163](Linux+Shell.assets/1684343305163.png)

![1684343541176](Linux+Shell.assets/1684343541176.png)

### 系统预定义变量

```bash
echo $HOME
#查看全局环境变量
env | less
#查看系统全局变量的方法（不带路径名）
printenv USER
```

![1684337498281](Linux+Shell.assets/1684337498281.png)

### 自定义变量

定义规则

* （1） 变量名称可以由字母、数字和下划线组成，但是不能以数字开头，环境变量名建议大写。

  （2） 等号两侧不能有空格

  （3） 在 bash  中，变量默认类型都是字符串类型，无法直接进行数值运算。 

  （4） 变量的值如果有空格，需要使用双引号或单引号括起来。

```bash
#定义变量
a=2

#定义，然后改变变量
my_var=Hello
my_var=hello

#错误示范
#1、   =的前后不能有空格
my_var = Hello
#2、    值有空格，        可用单引号或双引号引起来
my_var=hello,  word

#值都可用单双引号引起来
 my_var="hello, word"
 my_var='Hello, Word'
 
 #设置为全局变量供其子shell使用
 export my_var
```

![1684338551811](Linux+Shell.assets/1684338551811.png)

### 特殊变量

#### $n

* n为数字
  * `$0`代表该脚本名称
  * `$1`-`$9` 代表第一到第九个参数
  * `${n}`代表第n个参数（n>=10）

##### $1测试

hello.sh

![1684344599599](Linux+Shell.assets/1684344599599.png)

![1684344652050](Linux+Shell.assets/1684344652050.png)

##### 单引号$失效、$0

单引号使$失效变成普通字符串

paramter.sh

![1684345184096](Linux+Shell.assets/1684345184096.png)

![1684345138651](Linux+Shell.assets/1684345138651.png)

$0的缺点，值为执行文件名的路径

![1684345346153](Linux+Shell.assets/1684345346153.png)

#### $#

获取==所有输入参数个数==，常用于循环,判断参数的个数是否正确以及加强脚本的健壮性

![1684345622178](Linux+Shell.assets/1684345622178.png)

![1684345590338](Linux+Shell.assets/1684345590338.png)

![1684345686068](Linux+Shell.assets/1684345686068.png)

#### $*、$@

* `$*`代表命令行中所有的参数，==把所有的参数看成一个整体==
* `$@`也代表命令行中所有的参数，==把每个参数区分对待==

![1684345972494](Linux+Shell.assets/1684345972494.png)

![1684345989763](Linux+Shell.assets/1684345989763.png)

#### $?

最后一次执行的命令的返回状态

* 如果这个变量的值为 0，证明上一个命令正确执行；

* 如果这个变量的值为非 0（具体是哪个数，由命令自己来决定），则证明上一个命令执行不正确了。

  * 一般化错误返回的是1

  * 127表示没有对应命令

    ![1684504598500](Linux+Shell.assets/1684504598500.png)

## 运算符

常用的两种方式

`$((运算式))`  或  `$[运算式]`

```bash
#不能只用普通的+-操作，会被认为是字符串
a=1+5
echo $a
#如果中间还有空格，就会被当成命令了错误情况
a = 1 + 2

#方式一  $((表达式))
a=$((1+5))
echo $a
#方式二  $[表达式]
a=$[5+9]
echo $a
#方式三 expre 表达式		表达式中间要求要有空格，且对于*要转义\*
expr 10 - 2
expr 5 * 2			#错。需要用转义 \*
expr 1+2		#没有空格，结果为 1+2
a=expr 5 \* 2		#错
a="expr 5 \* 2"		#错，输出字符串	expr 5 \* 2
a=`expr 5 \* 3`
s=$[(2+3)*4]
```

![1684509296646](Linux+Shell.assets/1684509296646.png)

add.sh

![1684509444006](Linux+Shell.assets/1684509444006.png)

## 条件判断

### 基本用法

condition条件非空即为true，

注：true为0，false一般为1

```bash
#方法一
test condition		#注：condition前后及中间要有空格
#方法二
[ condition ]		#注：condition前后及中间要有空格
#如
[ zhaofengping ] 	#返回true
[  ]				#返回false
```

```bash
 ############################
 a=hello
 echo $a	
  ############################
 test $a = hello
 echo $?	#0
  ############################
 test $a = Hello
 echo $?	#1
  ############################
 a=Hello
 test $a = Hello
 echo $?	#0
  ############################
  
```

![1684510919734](Linux+Shell.assets/1684510919734.png)

### 常用判断条件

#### 整数之间比较

| 代码 | 解释                      |
| ---- | ------------------------- |
| -eq  | 等于（equal）             |
| -ne  | 不等于（not equal）       |
| -lt  | 小于（less than）         |
| -le  | 小于等于（less equal）    |
| -gt  | 大于（greater than）      |
| -ge  | 大于等于（greater equal） |

注：如果是字符串，用`=`判断相等，用`!=`判断不相等

```bash
[ 2 = 8 ]
[ 2 < 8 ]	#错
[ 2 -lt 8 ]
[ 2 -gt 8 ]
```

![1684512194395](Linux+Shell.assets/1684512194395.png)

#### 按照文件权限的判断

| 代码 | 解释                    |
| ---- | ----------------------- |
| -r   | 有读的权限（read）      |
| -w   | 有写的权限（write）     |
| -x   | 有执行的权限（execute） |

```bash
[ -r hello.sh ]
[ -w hello.sh ]
[ -x test ]
```

![1684512311017](Linux+Shell.assets/1684512311017.png)

#### 按照文件类型进行判断

| 代码 | 解释                                |
| ---- | ----------------------------------- |
| -e   | 文件存在（existence），可以是目录   |
| -f   | 件存在并且是一个常规的文件（file）  |
| -d   | 文件存在并且是一个目录（directory） |

```bash
[ -e /home/zhaofengping/abc.cfg ]
[ -f add.sh ]
[ -d /home/zhaofengping/ ]
[ -e /home/zhaofengping/ ]
[ -d /home/zhaofengping/abc.cfg ]
```

![1684512781905](Linux+Shell.assets/1684512781905.png)

#### 多条件判断

* `&&`前一条命令执行成功时，才执行后一条命令
* `||`上一条命令执行失败后，才执行下一条命令

==两者结合之后类似于Java中的三目运算符==

```bash
[ zhaofengping ] && echo OK || echo notOK

[  ] && echo OK || echo notOK

[ $a -lt 20 ] && echo "$a < 20" || echo "$a >= 20"

[ $a -lt 20 ] && echo "$a < 20" || echo "$a >= 20"
```

![1684513113497](Linux+Shell.assets/1684513113497.png)

![1684513417944](Linux+Shell.assets/1684513417944.png)

## 控制流程

### if判断

```shell
######单分支#######
if [ 条件判断式 ]; then			#命令可以用分号隔开，执行两条命令cd /home/zhaofengping/; ls -l
	程序
fi

if [ 条件判断式 ]	#多条件判断时 [ 判断式1 -a 判断式2 ]		-a表示and		-o表示or    -z 后跟变量，表示是否为空
then
	程序
fi

######多分支#######
if [ 条件判断式 ]
then
	程序
elif [ 条件判断式 ]
then
	程序
else
	程序
fi


```

#### 单分支

![1684596990136](Linux+Shell.assets/1684596990136.png)

if_test.sh

![1684597492919](Linux+Shell.assets/1684597492919.png)

![1684597460786](Linux+Shell.assets/1684597460786.png)

if_test.sh

![1684597705966](Linux+Shell.assets/1684597705966.png)

![1684597730076](Linux+Shell.assets/1684597730076.png)

![1684598173734](Linux+Shell.assets/1684598173734.png)

#### 多分支

##### 案例一

if_test.sh

![1684598660561](Linux+Shell.assets/1684598660561.png)

![1684598712309](Linux+Shell.assets/1684598712309.png)

##### 案例二

if_test.sh

![1684599429732](Linux+Shell.assets/1684599429732.png)

![1684599459062](Linux+Shell.assets/1684599459062.png)

### case语句

```shell
case $变量名 in 
"值 1"）
	如果变量的值等于值 1，则执行程序 1
;;			#表示命令的结束，相当于Java中的break
"值 2"）
	如果变量的值等于值 2，则执行程序 2
;;
	…省略其他分支…
*）			#相当于Java中的default
	如果变量的值都不是以上的值，则执行此程序
;;
esac		#case的倒写
```

![1684599929712](Linux+Shell.assets/1684599929712.png)

![1684600008015](Linux+Shell.assets/1684600008015.png)

### for循环

#### 用法一

```shell
for ((①初始值;  ②循环控制条件;  ④变量变化))		#双小括号里就可以用一些数学上的运算表达式，如果是[] 最好用类似-le
do
	③程序
done
```

![1684601003759](Linux+Shell.assets/1684601003759.png)

![1684601114207](Linux+Shell.assets/1684601114207.png)

#### 用法二

```shell
for 变量 in 值 1 值 2 值 3… 
do
	程序
done
```

![1684601978932](Linux+Shell.assets/1684601978932.png)

* `$*`与`$@`的区别

![1684601844572](Linux+Shell.assets/1684601844572.png)

![1684601866704](Linux+Shell.assets/1684601866704.png)

![1684602134628](Linux+Shell.assets/1684602134628.png)

![1684602171398](Linux+Shell.assets/1684602171398.png)

### while循环

```shell
while [ 条件判断式 ]
do
	程序
done
```

![1684602689881](Linux+Shell.assets/1684602689881.png)

![1684602721488](Linux+Shell.assets/1684602721488.png)

![1684602846925](Linux+Shell.assets/1684602846925.png)

![1684602820220](Linux+Shell.assets/1684602820220.png)

## read读取控制台输入

```shell
read (选项)  (参数)
```

* 选项
  * -p：指定读取值时的提示符；
  * -t：指定读取值时等待的时间（秒）如果-t  不加表示一直等待
* 参数
  * 变量：指定读取值的变量名

![1684604075123](Linux+Shell.assets/1684604075123.png)

![1684604053246](Linux+Shell.assets/1684604053246.png)

## 函数

### 系统函数

#### basename

basename 命令会删掉所有的前缀包括最后一个（‘/’）字符，然后将字符串显示出来。

可以理解为取路径里的文件名称

```shell
basename [strng/pathname] [suffix]
```

* 选项
  * suffix为后缀，如果 suffix 被指定了，basename 会将 pathname 或 string 中的 suffix 去掉

![1684662665985](Linux+Shell.assets/1684662665985.png)

##### 不用basename时的情况

parameter.sh

![1684662330772](Linux+Shell.assets/1684662330772.png)

![1684662460076](Linux+Shell.assets/1684662460076.png)

##### 用basename的情况

parameter.sh

![1684662884387](Linux+Shell.assets/1684662884387.png)

![1684662915851](Linux+Shell.assets/1684662915851.png)

![1684662964794](Linux+Shell.assets/1684662964794.png)

#### dirname

从给定的包含绝对路径的文件名中去除文件名（非目录的部分），

然后返回剩下的路径（目录的部分）

可以理解为取文件路径的绝对路径名称

```shell
dirname 文件绝对路径
```

![1684663533831](Linux+Shell.assets/1684663533831.png)

parameter.sh

![1684663751952](Linux+Shell.assets/1684663751952.png)

![1684663797998](Linux+Shell.assets/1684663797998.png)

### 自定义函数

其中`[]`表示可选的意思

```shell
[ function ] funname[()]
{
	Action; 
	[return int;]
}
```

注：

* 要先声明函数再进行调用（程序顺序执行，不像其他语言有编译器帮忙）
* 函数返回值
  * return后跟数值n(0-255)
  * 不写return，则为最后一条命令运行结果

#### 没有写return

![1684664589079](Linux+Shell.assets/1684664589079.png)

![1684664725413](Linux+Shell.assets/1684664725413.png)

#### return`$?`的范围值测试

fun_test.sh

![1684665520730](Linux+Shell.assets/1684665520730.png)

![1684665437737](Linux+Shell.assets/1684665437737.png)

fun_test.sh

![1684665659580](Linux+Shell.assets/1684665659580.png)

![1684665684203](Linux+Shell.assets/1684665684203.png)

#### 比较好的写法

fun_test.sh

![1684666027801](Linux+Shell.assets/1684666027801.png)

![1684666142187](Linux+Shell.assets/1684666142187.png)

### 应用案例——归档文件

daily_archive.sh

```shell
#!/bin/bash

#首先判断输入参数个数是否为1
if [ $# -ne 1 ]
then
        echo "参数个数错误。只能输入一个参数作为归档目录名"
        exit
fi

#从参数中获取目录名称
if [ -d $1 ]
then
        echo
else
        echo
        echo "目录不存在"
        echo
        exit
fi

DIR_NAME=$(basename $1)
DIR_PATH=$(cd $(dirname $1); pwd)

#获取当前日期
DATE=$(date +%y%m%d)

#定义生成的归档文件名称
FILE=archive_${DIR_NAME}_$DATE.tar.gz
DEST=/home/zhaofengping/archive/$FILE

#开始归档目录文件

echo "开始归档"
echo

tar -zcf $DEST $DIR_PATH/$DIR_NAME

if [ $? -eq 0 ]
then
        echo
        echo "归档成功！"
        echo "归档文件为：$DEST"
        echo
else
        echo "归档出问题！"
        echo
fi

exit
```

![1684667439299](Linux+Shell.assets/1684667439299.png)

![1684667566977](Linux+Shell.assets/1684667566977.png)

```shell
#设置定时调度
crontab -l		#查看
crontab -e		#编辑
```

![1684667784584](Linux+Shell.assets/1684667784584.png)

## 正则表达式入门

> 注：还会有一些扩展的正则规则`*` 、`+`、`?

| 特殊字符 | 作用                                                         |
| -------- | ------------------------------------------------------------ |
| `^`      | 匹配一行的开头                                               |
| `$`      | 匹配一行的结束                                               |
| `.`      | 匹配一个任意的字符                                           |
| `*`      | 不单独使用，他和前一个字符连用，表示匹配上一个字符 0 次或多次 |
| `[]`     | 表示匹配某个范围内的一个字符<br />`[6,8]`----- 匹配 6 或者 8<br />`[0-9]`------ 匹配一个 0-9 的数字<br />`[0-9]*` ------ 匹配任意长度的数字字符串<br />`[a-z]`------ 匹配一个a-z 之间的字符<br />`[a-z]*` ------- 匹配任意长度的字母字符串<br />`[a-c, e-f]`-匹配 a-c 或者 e-f 之间的任意字符 |
| `\`      | `\ `表示转义，并不会单独使用                                 |

### 特殊字符：`^`

匹配一行的开头

```shell
#匹配所有以a开头的行
cat /etc/passwd | grep ^a
#匹配所有以ab开头的行
cat /etc/passwd | grep ^ab
```

![1684759326133](Linux+Shell.assets/1684759326133.png)

### 特殊字符：`$`

匹配一行的结束

```shell
#匹配以bash结尾的行
cat /etc/passwd | grep bash$
#精确匹配一行内容
cat /etc/passwd | grep ^tony:x:1001:0::/home/tony:/bin/bash$

#匹配空行
cat shells/daily_archive.sh | grep ^$
#匹配空行并显示行数
cat shells/daily_archive.sh | grep -n ^$
```

![1684759483344](Linux+Shell.assets/1684759483344.png)

![1684759694722](Linux+Shell.assets/1684759694722.png)

![1684759783629](Linux+Shell.assets/1684759783629.png)

### 特殊字符：`.`

匹配一个任意的字符

```shell
cat shells/daily_archive.sh | grep -n h..e
cat /etc/passwd | grep -n r.t
 cat /etc/passwd | grep -n r...t
```

![1684761849314](Linux+Shell.assets/1684761849314.png)

### 特殊字符：`*`

不单独使用，他和上一个字符连用，表示匹配上一个字符 0 次或多次

```shell
cat /etc/passwd | grep -n ro*t

cat /etc/passwd | grep -n ^z.*bash$
cat /etc/passwd | grep -n ^a.*in$

 cat /etc/passwd | grep -n ^a.*var.*in$
```

![1684762079666](Linux+Shell.assets/1684762079666.png)

### 特殊字符：`[]`

表示匹配某个范围内的一个字符

```shell
echo "rbtadfasf" | grep r[a,b]t

 echo "ratadfasf" | grep r[a,b]t
 
 echo "ratadfasf" | grep r[ab]t
 
  echo "raaaatadfasf" | grep r[ab]*t
  
  echo "raabbbabatadfasf" | grep r[ab]*t
  
  cat /etc/passwd | grep -n r[a-z]*t
```

![1684762483219](Linux+Shell.assets/1684762483219.png)

### 特殊字符：`\`

表示转义，并不会单独使用

```shell
#要匹配符号  $
#错误写法一
cat shells/daily_archive.sh | grep $
#错误写法二
cat shells/daily_archive.sh | grep \$

#正确写法，要用单引号引起来
cat shells/daily_archive.sh | grep '\$''
```

![1684762938540](Linux+Shell.assets/1684762938540.png)

![1684763014715](Linux+Shell.assets/1684763014715.png)

![1684763094803](Linux+Shell.assets/1684763094803.png)

### 案例——手机号匹配

```shell
echo "15453677915" | grep ^1[34578][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$

echo "15453677915" | grep -E ^1[34578][0-9]{9}$
```

![1684763856440](Linux+Shell.assets/1684763856440.png)

## 文本处理工具

### cut

cut 命令按照分隔符进行剪切，对每一行都是如此，最终看起来像是裁剪出来对应的列

```shell
cut [选项参数] filename

```

选项参数说明

| 选项参数 | 功能                                           |
| -------- | ---------------------------------------------- |
| -f       | 列号，提取第几列                               |
| -d       | 分割符，按照指定分隔符分割列，默认是制表符`\t` |
| -c       | 表示取第几列                                   |

```shell
cut -d " " -f 1 cut.txt

cut -d " " -f 2,3 cut.txt

 cat /etc/passwd | grep bash$ | cut -d ":" -f 1,6,7
 
 cat /etc/passwd | grep bash$ | cut -d ":" -f 1-4
 
 cat /etc/passwd | grep bash$ | cut -d ":" -f 4-
 
 cat /etc/passwd | grep bash$ | cut -d ":" -f -4
 
 echo $PATH | cut -d ":" -f 2-
 
 echo $PATH | cut -d ":" -f 3-
 
  ifconfig ens33 | grep netmask | cut -d " " -f 10
  
  ifconfig | grep netmask | cut -d " " -f 10
```

![1684765379042](Linux+Shell.assets/1684765379042.png)

![1684765564037](Linux+Shell.assets/1684765564037.png)

![1684765593570](Linux+Shell.assets/1684765593570.png)

![1684765621950](Linux+Shell.assets/1684765621950.png)

### awk

有时也叫gawk  (g表示开源组织GNU)

![1684766859152](Linux+Shell.assets/1684766859152.png)

awk表示把文件逐行的读入，以空格为默认分隔符将每行切片，切开的部分再进行分析处理。

```shell
awk	[选项参数] ‘/pattern1/{action1}	/pattern2/{action2}...’ filename
```

* pattern
  * 表示 awk在数据中查找的内容，就是匹配模式。理解为匹配一些行
* action
  * 在找到匹配内容时所执行的一系列命令

选项参数说明

| 选项参数 | 说明                           |
| -------- | ------------------------------ |
| `-F`     | 指定输入文件分隔符，默认是空格 |
| `-v`     | 赋值一个用户定义变量           |

内置变量

| 变量     | 说明                                   |
| -------- | -------------------------------------- |
| FILENAME | 文件名                                 |
| NR       | 已读的记录数（行号）                   |
| NF       | 浏览记录的域的个数（切割后，列的个数） |

```shell
 cat /etc/passwd | grep ^root | cut -d ":" -f 7
 #类似于
 cat /etc/passwd | awk -F ":" '/^root/{print $7}'
 
 cat /etc/passwd | grep ^root | cut -d ":" -f 1,6,7
 cat /etc/passwd | awk -F ":" '/^root/{print $1","$7}'
 #类似于
 cat /etc/passwd | awk -F ":" '/^root/{print $1","$6","$7}'
 
 cat /etc/passwd | awk -F ":" '{print $1","$7}'
```

![1684768748645](Linux+Shell.assets/1684768748645.png)

```shell
#BEGIN 在所有数据读取行之前执行；END 在所有数据执行之后执行
cat /etc/passwd | awk -F ":" 'BEGIN{print "user, shell"} {print $1","$7} END{print "end of file"}'
```

![1684768914495](Linux+Shell.assets/1684768914495.png)

![1684768955514](Linux+Shell.assets/1684768955514.png)

```shell
#将 passwd 文件中的用户 id 增加某个数值，并输出
cat /etc/passwd | awk -F ":" '{print $3}'
cat /etc/passwd | awk -F ":" '{print $3+1}'

cat /etc/passwd | awk -v i=1 -F ":" '{print $3+i}'
cat /etc/passwd | awk -v i=2 -F ":" '{print $3+i}'
```

![1684769078520](Linux+Shell.assets/1684769078520.png)

![1684769223357](Linux+Shell.assets/1684769223357.png)

![1684769272772](Linux+Shell.assets/1684769272772.png)

![1684769299067](Linux+Shell.assets/1684769299067.png)

```shell
#固定的变量名
cat /etc/passwd | awk -F ":" '{print "文件名："FILENAME "行号："NR "列数："NF}'
awk -F ":" '{print "文件名："FILENAME "行号："NR "列数："NF}' /etc/passwd
```

![1684769482137](Linux+Shell.assets/1684769482137.png)

![1684769678584](Linux+Shell.assets/1684769678584.png)

```shell
#使用awk能够更加灵活的输出
ifconfig | grep -n ^$

ifconfig | awk '/^$/{print NR}'
ifconfig | awk '/^$/{print "空行："NR}'

ifconfig ens33 | grep netmask | cut -d " " -f 10
ifconfig | grep netmask | cut -d " " -f 10
ifconfig | awk '/netmask/{print $2}'
```

![1684769810400](Linux+Shell.assets/1684769810400.png)

### 案例——发送消息

#### 前置命令

```shell
#查看登录终端信息
who
who am i
#查看消息服务是否打开
mesg
#查看详细终端信息，对应消息服务是否打开
who -T
#设置消息服务关闭
mesg n
#设置消息服务开启（默认开启）
mesg y


#发送消息，执行命令后输入消息
write zhaofengping pts/0
```

![1684772726077](Linux+Shell.assets/1684772726077.png)

![1684772836861](Linux+Shell.assets/1684772836861.png)

![1684772860922](Linux+Shell.assets/1684772860922.png)

#### send_msg.sh

```shell
#!/bin/bash

#查看用户是否登录
login_user=$(who | grep -i -m 1 $1 | awk '{print $1}')

if [ -z $login_user ]
then
        echo "$1 不在线！"
        echo "脚本退出.."
        exit
fi

# 查看用户是否开启消息功能
is_allowed=$(who -T | grep -i -m 1 $1 | awk '{print $2}')
if [ $is_allowed != "+" ]
then
        echo "$1 没有开启消息功能"
        echo "脚本退出.."
        exit
fi

#确认是否有消息发送
if [ -z $2 ]
then
        echo "没有消息发送"
        echo "脚本退出"
        exit
fi

#从参数中获取要发送的消息
whole_msg=$(echo $* | cut -d " " -f 2-)

#获取用户登录的终端
user_terminal=$(who | grep -i -m 1 $1 | awk '{print $2}')

#写入要发送的消息
echo $whole_msg | write $login_user $user_terminal

if [ $? != 0 ]
then
        echo "发送失败！"
else
        echo "发送成功！"
fi
exit
```

![1684773006195](Linux+Shell.assets/1684773006195.png)

![1684773034396](Linux+Shell.assets/1684773034396.png)

