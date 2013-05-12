## 扉页预览
![](http://ww1.sinaimg.cn/large/818901c1jw1e4lhici2fjj20mz0whwfy.jpg)
## 重要的说明
### 安装字体
模板实现了中英文混排，中文字体使用的是 Adobe 家的字体，你可以在[这里](http://ishare.iask.sina.com.cn/f/15105086.html)下载到。对于 Windows 系统，安装字体很简单，只需要把下载得到的字体文件解压到`C:\\windows\Fonts\`下即可（系统会自动安装）；对于 *nix 系统，安装相对麻烦，不过相信使用这些系统的你一定知道怎么办。另外还有微软雅黑字体，这在 Windows Vista 及以后的 Windows 系列系统中是默认字体，如果需要，请到[这里](http://xiazai.zol.com.cn/detail/26/253442.shtml)下载。

英文字体使用如下字体

* `TeX Gyre Pagella`作为 Roman 字体，这在大多数的 TeX 发行中都已经自带了；
* `Verdana`作为粗体，这是Windows系统的自带字体，如果你的系统里没有这个字体，请到[这里](http://www.font5.com.cn/font_download.php?id=900&part=1249309256)下载；
* `Arial`作为 Sans 字体，它的情况同`Verdana`一样，如有需要请到[这里](http://font.chinaz.com/120308013581.htm)下载；
* `Inconsolata`作为打字机字体，这是一款优秀的打字机字体，请到[这里](http://ishare.iask.sina.com.cn/f/20566600.html)下载。

这些字体仅仅是个人喜好，当然也是推荐的字体。如果你希望能够正常使用这个模板，则必须安装好这些字体；或者，如果你会的话，可以在文档类中修改使用的字体。事实上做这个修改是很容易的，因为我将系统字体映射为了逻辑字体，这样使得你只需要修改映射部分的代码，而无需在文档类中依次寻找并修改设置。

    \newcommand\fontnameroman{TeX Gyre Pagella}
    \newcommand\fontnameblack{Verdana}
    \newcommand\fontnamesans{Arial}
    \newcommand\fontnamemono{Inconsolata}
    \newcommand\fontnamehei{Adobe Heiti Std}
    \newcommand\fontnamesong{Adobe Song Std}
    \newcommand\fontnamefsong{Adobe Fangsong Std}
    \newcommand\fontnamekai{Adobe Kaiti Std}  
    \newcommand\fontnameyahei{Yahei Mono}

### 怎样编译
文档使用 XeLaTeX 进行编译。这要求所有参与编译的文档必须使用 UTF8 编码格式，
因此你新建的任何参与编译的`.tex`文件都必须使用 UTF8 编码。

不选择 pdfLaTeX 或者 LaTeX 的原因很简单，使用它们结合 CJK 宏包支持中文的方
法已经过时了，因为他们对于换行和字体选择的处理不好。此外 XeTeX 引擎原生支持
Unicode 编码，很好很强大。

### 打印的问题
对于需要打印的文档，请在载入文档类的时候添加`print`选项。这将会调整页面
设置以适应双页打印，并调整`\chapter{title}`命令的效果。

    \documentclass[print]{sduthesis}

如果不是彩色打印机，在打印的时候请选择黑白打印。文中有些使用彩色标注的部
分在黑白打印中效果不好，如果不正确选择打印机模式的话。
## 获取与更新
###获取
请到项目的 GitHub 页获取。

https://github.com/ChenMeng0518/sduthesis/

### 更新记录
#### 1.1.4
增加定义了中英文的摘要环境和关键词控制序列。可以使用 *cnabstract* 和 *enabstract* 生成中英文的摘要，以及使用`\cnkeywords{}`和`\enkeywords{}`生成中英文的关键词。

#### 1.1.0
修正了目录中章节显示的问题，提供了新的选项`[roman]`以调用 *Times New Roman* 字体。修正了 Readme 中的一些小问题。
