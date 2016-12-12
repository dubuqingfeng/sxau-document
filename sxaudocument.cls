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

% 设置版面
\RequirePackage[centering, a4paper, body={14.6cm, 24cm}]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{fontspec}

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

