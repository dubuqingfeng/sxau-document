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

\geometry{left=2.5cm, right=2.0cm, top=2.0cm, bottom=2.7cm}
\setlength{\headheight}{1pt}
\setlength{\footskip}{0.7cm}
\setlength{\parindent}{0pt}

\titleformat{\chapter}
{\heiti\centering\fontsize{18pt}{18pt}\selectfont}
{}
{0pt}
{}

\fancypagestyle{main}{
  \fancyhead[L]{\small\kaishu{sxau}}
  \fancyhead[R]{\nouppercase{\small\kaishu\leftmark}}
  \fancyfoot[C]{\small ~{\bf\thepage}~}
  \renewcommand{\headheight}{32pt}
}

\newcommand{\CJKLaTeX}{CJK--\LaTeX} 