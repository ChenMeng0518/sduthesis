% !Mode:: "TeX:UTF-8"
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sduthesis}[2013/05/11 1.1.0 Shandong University Thesis Template]
%
\newif\ifprint\printfalse
\DeclareOption{print}{\printtrue}
\ProcessOptions\relax
\ifprint
  \LoadClass[a4paper, 12pt]{book}
	\newcommand{\GeoOptions}{left=4cm, right=2.5cm, top=3.5cm, bottom=2.5cm, xetex}
\else
	\LoadClass[a4paper, 12pt, openany]{book}
	\newcommand{\GeoOptions}{left=2.5cm, right=2.5cm, top=3.5cm, bottom=2.5cm, xetex}
\fi
%
\newif\ifRoman\Romanfalse
\DeclareOption{roman}{\Romantrue}
\ProcessOptions\relax
\ifRoman
	\newcommand{\RomanName}{Times New Roman}
\else
	\newcommand{\RomanName}{TeX Gyre Pagella}
\fi
\DeclareOption*{%
\PassOptionsToClass{\CurrentOption}{book}%
}
\ProcessOptions
%------------------------ 中文支持 ------------------------
\RequirePackage[			%使得能够单独设置中文字体
		SlantFont,			%允许斜体
		BoldFont,			%允许粗体
		CJKchecksingle,		%检查孤字占行
		CJKnumber			%使用CJKnumber
		]{xeCJK}          	%使得能够单独设置中文字体
\RequirePackage{xunicode}
\RequirePackage{xltxtra}
\defaultfontfeatures{Mapping=tex-text}
\XeTeXlinebreaklocale "zh"			%使用中文的换行风格
\XeTeXlinebreakskip = 0pt plus 1pt	%调整换行逻辑的弹性大小
% 字体映射
\newcommand\fontnameroman{\RomanName}%TeX Gyre Pagella/Times New Roman
\newcommand\fontnameblack{Verdana}%Verdana
\newcommand\fontnamesans{Arial}%Calibri
\newcommand\fontnamemono{Inconsolata}%Courier New/Inconsolata
\newcommand\fontnamehei{Adobe Heiti Std}
\newcommand\fontnamesong{Adobe Song Std}
\newcommand\fontnamefsong{Adobe Fangsong Std}
\newcommand\fontnamekai{Adobe Kaiti Std}%KaiTi
\newcommand\fontnameyahei{Microsoft YaHei}%Microsoft YaHei/Yahei Mono/YaHei Consolas Hybrid
% 英文
\setmainfont[BoldFont=\fontnameblack , ItalicFont=\fontnamesans]{\fontnameroman}
\setsansfont[]{\fontnamesans}
\setmonofont[BoldFont=\fontnamehei]{\fontnamemono}
% 中文
\setCJKmainfont[BoldFont=\fontnamehei,ItalicFont=\fontnamekai]{\fontnamesong}			
\setCJKmonofont{\fontnameyahei}
\setCJKsansfont[BoldFont=\fontnamehei]{\fontnameyahei}

%楷体
\newfontinstance\KAI{\fontnamekai}
\newcommand{\kai}[1]{{\KAI #1}} 
%黑体
\newfontinstance\HEI{\fontnamehei}
\newcommand{\hei}[1]{{\HEI #1}}
%宋体
\newfontinstance\SONG{\fontnamesong}
\newcommand{\song}[1]{{\SONG #1}}
%仿宋体
\newfontinstance\FSONG{\fontnamefsong}
\newcommand{\fsong}[1]{{\FSONG #1}}
%======================== 中文支持 ========================
%------------------------ 字号设置 ------------------------
\RequirePackage{ifthen}
\newcommand{\xeCJKfontsize}[4]{%
\fontsize{#1}{#2 plus#3 minus #4}\selectfont}
\newcommand\zihao[1]{%
\ifthenelse{\equal{#1}{0}}{%
\xeCJKfontsize{42bp}{50.4pt}{.5pt}{.3pt}}{}%
\ifthenelse{\equal{#1}{0-}}{%
\xeCJKfontsize{36bp}{43.2pt}{.5pt}{.3pt}}{}%
\ifthenelse{\equal{#1}{1}}{%
\xeCJKfontsize{28bp}{31.2pt}{.5pt}{.3pt}}{}%
\ifthenelse{\equal{#1}{1-}}{%
\xeCJKfontsize{24bp}{28.8pt}{.5pt}{.3pt}}{}%
\ifthenelse{\equal{#1}{2}}{%
\xeCJKfontsize{21bp}{26.4pt}{.5pt}{.3pt}}{}%
\ifthenelse{\equal{#1}{2-}}{%
\xeCJKfontsize{18bp}{21.6pt}{.3pt}{.2pt}}{}%
\ifthenelse{\equal{#1}{3}}{%
\xeCJKfontsize{15.75bp}{19.3pt}{.3pt}{.2pt}}{}%
\ifthenelse{\equal{#1}{3-}}{%
\xeCJKfontsize{15bp}{18pt}{.3pt}{.2pt}}{}%
\ifthenelse{\equal{#1}{4}}{%
\xeCJKfontsize{14bp}{16.8pt}{.3pt}{.2pt}}{}%
\ifthenelse{\equal{#1}{4-}}{%
\xeCJKfontsize{12bp}{14.4pt}{.3pt}{.2pt}}{}%
\ifthenelse{\equal{#1}{5}}{%
\xeCJKfontsize{10.5bp}{12.6pt}{.3pt}{.2pt}}{}%
\ifthenelse{\equal{#1}{5-}}{%
\xeCJKfontsize{9bp}{10.8pt}{.2pt}{.1pt}}{}%
\ifthenelse{\equal{#1}{6}}{%
\xeCJKfontsize{7.875bp}{9pt}{.2pt}{.1pt}}{}%
\ifthenelse{\equal{#1}{6-}}{%
\xeCJKfontsize{6.5bp}{7.8pt}{.2pt}{.1pt}}{}%
\ifthenelse{\equal{#1}{7}}{%
\xeCJKfontsize{5.25bp}{6.6pt}{.1pt}{.1pt}}{}%
\ifthenelse{\equal{#1}{8}}{%
\xeCJKfontsize{5bp}{6pt}{.1pt}{.1pt}}{}}
%======================== 字号设置 ========================
%------------------------ 页面设置 ------------------------
\RequirePackage[\GeoOptions]{geometry}
% 页眉页脚
\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\fancyhf{}  %清除以前对页眉页脚的设置
\newcommand{\makeheadrule}{%
\makebox[0pt][l]{\rule[.7\baselineskip]{\headwidth}{0.8pt}}%
\rule[0.85\baselineskip]{\headwidth}{1.5pt}\vskip-.8\baselineskip}%1.5 0.4->0.5
\makeatletter
\renewcommand{\headrule}{%
{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
\makeheadrule}}
\makeatother
\pagestyle{fancy}
\fancyhf{}
\chead{\zihao{5}山东大学学士学位论文}
\cfoot{--{~\thepage~}--}
% 缩进和行距
\RequirePackage{indentfirst}
\setlength{\parindent}{2.45em}	%调整首行缩进
%调整行间距
\usepackage{setspace}
%\onehalfspacing
%调整段间距
\addtolength{\parskip}{.4em}
%======================== 页面设置 ========================
%------------------------ 章节样式 ------------------------
\RequirePackage[center]{titlesec}

\ifprint
	\relax
\else
	\titleclass{\chapter}{straight}
\fi
\titleformat{\chapter}[hang]{\centering\bfseries\zihao{3-}}{第\CJKnumber{\arabic{chapter}}章}{1em}{}
\titleformat{\section}{\centering\bfseries\zihao{4}}{$\S$\,\thesection}{1em}{}
\titleformat{\subsection}{\centering\bfseries\zihao{4-}}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\centering\bfseries\zihao{5}}{\thesubsubsection}{1em}{}

\RequirePackage{titletoc}
\titlecontents{chapter}[0pt]{\vspace{.1\baselineskip}\bfseries}
    {第\CJKnumber{\thecontentslabel}章\hspace{2.8mm}}{}
    {\hspace{.5em}\titlerule*[10pt]{}\contentspage}
%======================== 章节样式 ========================
%------------------------ 中文重定义 ------------------------
% 今日
\renewcommand{\today}{\number\year\ 年\ \number\month\ 月\ \number\day\ 日}	
% 目录名
\renewcommand{\contentsname}{目\hspace*{1em}录}
% 图
\renewcommand{\figurename}{图}
% 表
\renewcommand{\tablename}{表}	
% 参考文献
\renewcommand{\bibname}{参考文献}
%======================== 中文重定义 ========================
%------------------------ 数学支持 ------------------------
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{amsbsy}
\RequirePackage{bm}
\RequirePackage{mathrsfs}
\newcommand*{\VEC}[1]{\ensuremath{\boldsymbol{#1}}}	%向量
\newcommand*{\me}{\ensuremath{\mathrm{e}}}			%自然对数的底
\newcommand*{\mi}{\ensuremath{\mathrm{i}}}			%虚数单位
\newcommand*{\dif}{\ensuremath{\,\mathrm{d}}}			%微分算子
\DeclareMathAlphabet{\mathsfsl}{OT1}{cmss}{m}{sl}
\newcommand*{\MATRIX}[1]{\ensuremath{\mathsfsl{#1}}}	%矩阵名称
\newcommand*{\TENSOR}[1]{\ensuremath{\mathsfsl{#1}}}	%张量名称
\newcommand*{\HUA}[1]{\ensuremath{\mathscr{{#1}}}} 		%输出花体字母
\newcommand*{\SHUANG}[1]{\ensuremath{\mathbb{{#1}}}}	%输出双线字母
\numberwithin{equation}{chapter}					%公式编号随section变化
%======================== 数学支持 ========================
%------------------------ 图表支持 ------------------------
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\graphicspath{{figures/}} %设置图片搜索路径

\RequirePackage{booktabs}
\renewcommand\arraystretch{1.3} % 调整array环境的行间距为一倍半行距

\numberwithin{figure}{chapter}
\numberwithin{table}{chapter}

% 使得center环境中可以使用caption参与图表的编号
% 这是为了防止图表乱跑
\makeatletter
\newcommand{\figcaption}{\def\@captype{figure}\caption}
\newcommand{\tabcaption}{\def\@captype{table}\caption}
\makeatother
%======================== 图表支持 ========================
%------------------------ 交叉引用 ------------------------
\RequirePackage[colorlinks, 
		linkcolor = black, 
		anchorcolor = black, 
		citecolor = black]
		{hyperref}	%交叉引用
\RequirePackage{url}
%======================== 交叉引用 ========================
%------------------------ newtoks ------------------------
\newtoks\fenlei		% 中图分类号
\newtoks\DWdaihao	% 单位代号
\newtoks\miji		% 密级
\newtoks\StuNum		% 学号
\newtoks\Ctitle		% 中文标题
\newtoks\Cauthor	% 作者中文名
\newtoks\Cmajor		% 专业
\newtoks\Csuperver	% 导师
\newtoks\Cdate		% 中文日期
%======================== newtoks ========================
%------------------------ 论文封面 ------------------------
\newcommand{\Lone}{1.7cm}
\newcommand{\Ltwo}{2.5cm}
\newcommand{\Lthree}{4cm}
\newcommand{\Lfour}{7cm}
\newcommand{\maketitlepage}{%
	\null
	\thispagestyle{empty}%
	\begin{center}
	{
	\noindent
	\begin{tabular}%
	{p{\Lone}p{\Ltwo}}
		\makebox[\Lone][s]{\textbf{\zihao{4-}分类号}}&
		\makebox[\Ltwo][c]{{\zihao{5}\the\fenlei}}\\
		\cline{2-2}
		\makebox[\Lone][s]{\textbf{\zihao{4-}密级}}&
		\makebox[\Ltwo][c]{{\zihao{5}\the\miji}}\\
		\cline{2-2}
	\end{tabular}
	\hfill
	\begin{tabular}%
	{p{\Lone}p{\Ltwo}}
		\makebox[\Lone][s]{\textbf{\zihao{4-}单位代号}}&
		\makebox[\Ltwo][c]{{\zihao{5}\the\DWdaihao}}\\
		\cline{2-2}
		\makebox[\Lone][s]{\textbf{\zihao{4-}学号}}&
		\makebox[\Ltwo][c]{{\zihao{5}\the\StuNum}}\\
		\cline{2-2}
	\end{tabular}
	}
	\par
	\vspace*{2cm}
	{
		\noindent
		{\includegraphics[width = .6\textwidth]{SDU.pdf}}\\[3mm]
		{\zihao{2}学~士~学~位~论~文}
	}
	\par
	\vspace*{1.75cm}
	{
		\noindent
		\zihao{2}\it\the\Ctitle
	}
	\par
	\vfill
	\begin{tabular} %
	{p{\Lthree}p{\Lfour}}
		\makebox[\Lthree][s]{\textbf{\zihao{3}作者姓名}}&
		\makebox[\Lfour][c]{{\zihao{4}\the\Cauthor}}\\
		\cline{2-2}\\
		\makebox[\Lthree][s]{\textbf{\zihao{3}专业}}&
		\makebox[\Lfour][c]{{\zihao{4}\the\Cmajor}}\\
		\cline{2-2}\\
		\makebox[\Lthree][s]{\textbf{\zihao{3}指导老师}}&
		\makebox[\Lfour][c]{{\zihao{4}\the\Csuperver}}\\
		\cline{2-2}\\
		\makebox[\Lthree][s]{\textbf{\zihao{3}日期}}&
		\makebox[\Lfour][c]{{\zihao{4}\the\Cdate}}\\
		\cline{2-2}\\
	\end{tabular}
	\end{center}
	\clearpage
}
%======================== 论文封面 ========================
%------------------------ 声    明 ------------------------
\newcommand{\makestatement}{%
\begin{titlepage}
\vspace{2cm} {\zihao{4}\baselineskip=30pt

\centerline{\zihao{3}\bfseries 原\quad 创\quad 性\quad 声\quad 明}

\noindent\hspace*{2em}本人郑重声明：所呈交的学位论文，是本人在导师指导下，独
立进行研究所取得的成果。除文中已经注明引用的内容外，本论文不包
含任何其他个人或集体已经发表或撰写过的科研成果。对本论文的研究作出重
要贡献的个人和集体，均已在文中以明确方式标明。本声明
的法律责任由本人承担。

\vspace{13mm}

\noindent\hspace*{2em}论文作者签名：\hrulefill \hspace{1em}日\hspace{1em} 期：\hrulefill

\vspace{2.7cm}

\centerline{\zihao{3}\bfseries 关于学位论文使用授权的声明}

\noindent\hspace*{2em}本人完全了解山东大学有关保留、使用学位论文的规定，同意学
校保留或向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅
和借阅；本人授权山东大学可以将本学位论文全部或部分内容编入有关数据库
进行检索，可以采用影印、缩印或其他复制手段保存论文和汇编本学位论文。

\noindent\hspace*{2em}（保密的论文在解密后应遵守此规定）

\vspace{13mm}

\noindent\hspace*{2em}论文作者签名：\hrulefill\hrulefill\hspace{0.5em} 导师签名：\hrulefill\hrulefill\hspace{0.5em}日\hspace{0.5em}期：\hrulefill \hrulefill }
\end{titlepage}
}
%======================== 声    明 ========================
%------------------------ M A  K E ------------------------
\newcommand{\maketitlepagestatement}{%
\maketitlepage
\thispagestyle{empty}
~
\vfill\eject
\thispagestyle{empty}
\makestatement
\vfill\eject
\thispagestyle{empty}
~
\vfill\eject
\setcounter{page}{1}
}
\newcommand{\MakeTableofContents}{%
\pagenumbering{Roman}
\tableofcontents
\vfill\eject
\pagenumbering{arabic}\setcounter{page}{1}
}
\newcommand{\maketableofcontents}{\MakeTableofContents}
%======================== M A  K E ========================
%------------------------ 常用宏包 ------------------------
\RequirePackage[numbers, sort&compress]{natbib}
\RequirePackage{paralist}
\RequirePackage{dtklogos}
%======================== 常用宏包 ========================
\endinput
%------------------------ XXXXXXXX ------------------------

%======================== XXXXXXXX ========================
