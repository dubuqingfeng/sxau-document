%% sxaudocument.cls for SXAU design document

\ProvidesClass{sxaudocument}[2016/12/12 SXAU Design Document]
\NeedsTeXFormat{LaTeX2e}
\def\version{v0.1}

\LoadClass[a4paper, UTF8, scheme=chinese]{ctexbook}

\RequirePackage{fontspec}
\setmainfont[
  Path = fonts/Main/ ,
  Extension = .otf ,
  UprightFont = *-regular ,
  BoldFont = *-bold ,
  ItalicFont = *-italic ,
  BoldItalicFont = *-bolditalic ,
  SmallCapsFont = Fontin-SmallCaps
]{texgyretermes}

\AtEndOfClass{\input{sxaudocument.cfg}}

% 设置版面及依赖包
\RequirePackage[centering, a4paper, body={14.6cm, 24cm}]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[xetex, bookmarksnumbered, colorlinks, urlcolor=black, linkcolor=black, citecolor=black, plainpages=false, pdfstartview=FitH]{hyperref}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{fontspec}
\RequirePackage{graphicx}
\RequirePackage{ccaption}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage[backend=biber, style=caspervector,utf8, bibencoding=utf8, sorting=none]{biblatex}


% 页边距
\geometry{left=2.5cm, right=2.0cm, top=2.0cm, bottom=2.7cm}
\setlength{\headheight}{1pt}
\setlength{\footskip}{0.7cm}
\setlength{\parindent}{0pt}

% 用于页眉的作者和标题
\renewcommand\title[2][\sxau@value@title]{%
  \def\sxau@value@title{#2}
  \def\sxau@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\sxau@value@author{#1}}

\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{2}     % 目录深度 (part 对应 -1)

\ctexset{contentsname={\sxau@contentsname}}

\titleformat{\chapter}
{\heiti\centering\xiaoerhao}
% 副标题
{}
{0pt}
{}

% 图片配置
\graphicspath{{fig/}{figure/}{figures/}{logo/}{logos/}{graph/}{graphs}}
\DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg,.jpeg}

\captiondelim{\ }
\captionnamefont{\heiti\wuhao}
\captiontitlefont{\heiti\wuhao}

% Setting Package listings/lstlistings
\lstset{tabsize=4, %
  frame=shadowbox, %把代码用带有阴影的框圈起来
  commentstyle=\color{red!50!green!50!blue!50},%浅灰色的注释
  rulesepcolor=\color{red!20!green!20!blue!20},%代码块边框为淡青色
  keywordstyle=\color{blue!90}\bfseries, %代码关键字的颜色为蓝色，粗体
  showstringspaces=false,%不显示代码字符串中间的空格标记
  stringstyle=\ttfamily, % 代码字符串的特殊格式
  keepspaces=true, %
  breakindent=22pt, %
  numbers=left,%左侧显示行号
  stepnumber=1,%
  numberstyle=\tiny, %行号字体用小号
  basicstyle={\footnotesize\ttfamily}, %
  showspaces=false, %
  flexiblecolumns=true, %
  breaklines=true, %对过长的代码自动换行
  breakautoindent=true,%
  breakindent=4em, %
  aboveskip=1em, %代码块边框
  %% added by http://bbs.ctex.org/viewthread.php?tid=53451
  fontadjust,
  captionpos=t,
  framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
  xleftmargin=4em,xrightmargin=4em, % 设定listing左右的空白
  texcl=true,
  % 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
  extendedchars=false,columns=flexible,mathescape=true
  numbersep=-1em
}

\def\sxau@label@references{参考文献}

\newenvironment{references}[1]
     {\chapter{\sxau@label@references}%
      \@mkboth{\MakeUppercase\sxau@label@references}
              {\MakeUppercase\sxau@label@references}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `references' environment}}%
      \endlist}

% fancy的页眉页脚
\if@twoside
  \fancypagestyle{main}{
    \fancyhf{}
    \fancyhead[OC]{\centering\xiaowuhao\kaishu\sxau@label@author\sxau@value@author\sxau@label@title\sxau@value@title}
    \fancyhead[EC]{\centering\xiaowuhao\kaishu\sxau@label@name}
    \fancyfoot[LE]{\wuhao ~{\bf\thepage}~}
    \fancyfoot[RO]{\wuhao ~{\bf\thepage}~}
    % 页眉线
    \renewcommand{\headrulewidth}{0pt}
  }
  \fancypagestyle{plain}{
    \fancyhf{}
    \fancyhead[OC]{\centering\xiaowuhao\kaishu\sxau@label@author\sxau@value@author\sxau@label@title\sxau@value@title}
    \fancyhead[EC]{\centering\xiaowuhao\kaishu\sxau@label@name}
    \fancyfoot[LE]{\wuhao ~{\bf\thepage}~}
    \fancyfoot[RO]{\wuhao ~{\bf\thepage}~}
    \renewcommand{\headrulewidth}{0pt}
  }
\else
  \fancypagestyle{main}{
    \fancyhf{}
    \fancyhead[R]{\xiaowuhao\kaishu\sxau@label@author\sxau@value@author\sxau@label@title\sxau@value@title}
    \fancyhead[L]{\xiaowuhao\kaishu\sxau@label@name}
    \fancyfoot[C]{\wuhao ~{\bf\thepage}~}
  }
\fi

\newcommand{\CJKLaTeX}{CJK--\LaTeX} 


\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{9pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}

