%========================================================================%
%               Copyright (C) 2016 All Rights Reserved.                  %
%             Author:BillHu<billhu@icloud.com>  Ver:<1.0>                %
%========================================================================%
%    The author grants permission, without fee and without a written     %
% license agreement, for use, reproduction, modification, and distribu-  %
% tion of this software and its documentation by educational, research,  %
% and non-profit entities for noncommercial purposes only.The above      %
% copyright notice and this paragraph MUST appear in all copies and      %
% modifications of the software and/or documentation.                    %
%========================================================================%
\ProvidesClass{bjtu-bachelor-thesis}[2022/04/02]
\def\version{1.0}
\LoadClass[a4paper,zihao=-4,twoside,hyperref,openright]{ctexbook}
\NeedsTeXFormat{LaTeX2e}
%========================================================================%
% 基本宏包
%========================================================================%
\RequirePackage{caption}
\RequirePackage{mathptmx}
\RequirePackage{changepage}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{tabularx}
\RequirePackage{subcaption}
\RequirePackage{pgfplots}
\RequirePackage{tikz}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage{titletoc}
\RequirePackage{fontspec}
\RequirePackage[colorlinks,linkcolor=black,anchorcolor=black,citecolor=black,urlcolor=black]{hyperref}
\RequirePackage{calc}
\RequirePackage{datetime}
\RequirePackage{etoolbox}
\RequirePackage{booktabs}
\RequirePackage{floatrow}
\RequirePackage{appendix}
\RequirePackage{enumitem}
\RequirePackage[backend=biber,style=gb7714-2015]{biblatex}
\RequirePackage{underscore}
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{multirow}
\RequirePackage{float}
\RequirePackage[linesnumbered,ruled]{algorithm2e}
\RequirePackage{algpseudocode}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
%========================================================================%
% 北京交大明确给出的格式
%========================================================================%
\setCJKfamilyfont{hwzs}{stzhongs.ttf}
\newcommand{\hwzs}{\CJKfamily{hwzs}}
\setCJKfamilyfont{mysong}{simsun.ttc}[AutoFakeBold=2.5]
\newcommand*{\mysongti}{\CJKfamily{mysong}}

\newfontfamily{\eheiti}{simhei.ttf}

\setCJKfamilyfont{myhei}{simhei.ttf}[AutoFakeBold=2]
\newcommand*{\myheiti}{\CJKfamily{myhei}}
\newcommand*{\yearmonth}{\songti \zihao{-3} \the \year 年 \the \month 月}


\geometry{left=2.5cm,right=2.5cm,top=3.0cm,bottom=3.0cm,headheight=1.5cm,footskip=1.2cm}
\setmainfont{Times New Roman}
\linespread{1.4}\selectfont
\setlength{\baselineskip}{20pt}

\renewcommand{\arraystretch}{1.2}

\renewcommand{\captionfont}{\zihao{5}}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\DeclareCaptionFont{mysongti}{\zihao{5}\mysongti}
\captionsetup{font=mysongti}

\DeclareFloatFont{mysongti}{\zihao{5}\mysongti}
\DeclareFloatVCode{figureafterfloat}{\vspace{-16pt}}
\DeclareFloatVCode{tableafterfloat}{\vspace{-4pt}}
\floatsetup[table]{font=mysongti,capposition=top,captionskip=2pt,postcode=tableafterfloat}
\floatsetup[figure]{font=mysongti,capposition=bottom,captionskip=4pt,postcode=figureafterfloat}

\ctexset{
    chapter = {
        name={,},
        number={\arabic {chapter}},
        beforeskip={-4pt},
        afterskip={18pt},
        nameformat={},
        titleformat={},
        format=\heiti\zihao{3},
    },
    section = {
        format=\raggedright\heiti\zihao{-3},
        beforeskip={24pt},
        afterskip={18pt},
    },
    subsection = {
        format=\raggedright\heiti\zihao{4},
        beforeskip={24pt},
        afterskip={18pt},
    },
}

\setlength{\itemsep}{100pt}
\captionsetup[table]{labelsep=space} % 表
\captionsetup[figure]{labelsep=space} % 图  

%========================================================================%
\newcommand{\figcaption}[1]{\caption{图}{#1}}
%========================================================================%
% 目录格式
%========================================================================%
\makeatletter
\renewcommand\tableofcontents{%
    \chapter*{\makebox[\linewidth]{\zihao{-2} 目\hspace{2em}录}
        \@mkboth{\MakeUppercase \contentsname}{}}% ADDED
	\vspace{-0.5cm}
    \@starttoc{toc}%
    } 
\makeatother



\makeatletter
\renewcommand\contentspage[1][\MakeUppercase{\eheiti \thecontentspage}]{%
  \hb@xt@\@pnumwidth{\hfil#1}%
  \hspace*{-\@pnumwidth}}
\makeatother


\titlecontents{part}[0em]{\vspace{0.2ex}}{\eheiti \zihao{-4}\contentslabel{0em}}{\eheiti \myheiti\zihao{-4}}{\titlerule*[0.5pc]{.}\contentspage}[\vspace{0.2ex}]
% \contentsmargin{1em}
\titlecontents{chapter}[1.5em]{\vspace{0.3ex}}{\myheiti \eheiti \zihao{-4}\contentslabel{1.5em}}{\myheiti \eheiti \zihao{-4}}{\titlerule*[0.5pc]{.}\contentspage}[\vspace{0.15ex}]
\titlecontents{section}[3em]{\hspace{0em}}{\contentslabel{2.2em}}{\songti \zihao{-4}}{\titlerule*[0.5pc]{.}\contentspage}[\vspace{0ex}]
\titlecontents{subsection}[4.5em]{\hspace{0em}}{\contentslabel{2.9em}}{\songti \zihao{-4}}{\titlerule*[0.5pc]{.}\contentspage}[\vspace{0ex}]
%========================================================================%
% 页眉设置
%========================================================================%
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\fancypagestyle{myfancy}{
	
	\fancyhead[CE,CO]{}
	\fancyhead[L]{\zihao{4}\hwzs \hspace*{0.5em}北京交通大学毕业设计（论文）}
	\fancyhead[R]{\zihao{4}\hwzs \leftmark\hspace*{0.5em}}
	\fancyfoot[CO,CE]{\zihao{5}\thepage}

	% Redefining headrule
	\makeatletter
	\renewcommand{\headrule}{\hrule height 2.5pt \vspace{1pt}\hrule height 1pt}
}

\fancypagestyle{myfancymain}{
	\fancyhead[R]{\zihao{4}\hwzs 正文\hspace*{0.5em}}
}



\fancypagestyle{myempty}{
\fancyhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{myclear}{
\fancyhead{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot{}
}
\fancypagestyle{plain}{
\fancyhead{}
\fancyhead[CE]{\zihao{5}\hspace{2em}北京交通大学硕士学位论文}
\fancyhead[CO]{\zihao{5}\hspace{2em}\leftmark}
\fancyfoot[CO,CE]{\zihao{-5}\thepage}
\renewcommand{\headrulewidth}{0.4pt}
}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
%========================================================================%
% 自定义内容
%========================================================================%
\newcommand{\ctitle}[1]{\renewcommand{\ctitle}{#1}}
\newcommand{\etitle}[1]{\renewcommand{\etitle}{#1}}
\newcommand{\cdata}[1]{\renewcommand{\cdata}{#1}}
\newcommand{\cauthor}[1]{\renewcommand{\cauthor}{\songti\zihao{3}#1}}
\newcommand{\cschool}[1]{\renewcommand{\cschool}{\songti\zihao{3}#1}}
\newcommand{\cmajor}[1]{\renewcommand{\cmajor}{\songti\zihao{3}#1}}
\newcommand{\cid}[1]{\renewcommand{\cid}{\zihao{3}#1}}
\newcommand{\ctutor}[1]{\renewcommand{\ctutor}{\songti\zihao{3}#1}}
\newcommand{\cthanks}[1]{\renewcommand{\cthanks}{#1}}

\newcommand{\cabstract}[1]{\renewcommand{\cabstract}{#1}}
\newcommand{\ckeywords}[1]{\renewcommand{\ckeywords}{#1}}
\newcommand{\eabstract}[1]{\renewcommand{\eabstract}{#1}}
\newcommand{\ekeywords}[1]{\renewcommand{\ekeywords}{#1}}

\newcommand{\authorsign}[1]{\renewcommand{\authorsign}{#1}}
\newcommand{\tutorsign}[1]{\renewcommand{\tutorsign}{#1}}
\newcommand{\authorsigndate}[1]{\renewcommand{\authorsigndate}{#1}}
\newcommand{\tutorsigndate}[1]{\renewcommand{\tutorsigndate}{#1}}
% 插入代码样式
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{frame=none,
  language=Java,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breakatwhitespace=true,
  tabsize=3
}
%========================================================================%
% 参考文献格式
%========================================================================%
\addbibresource[]{MyDissBib.bib}

\defbibheading{myheading}[\zihao{-2}参考文献]{%
  \centering\chapter*{#1}
  \markboth{参考文献}{}}
\defbibenvironment{bibliography}
  {\list
     {}
     {\setlength{\leftmargin}{2pt}%
      \setlength{\itemindent}{2em}%
      \setlength{\itemsep}{0pt}%
      \setlength{\parsep}{\bibparsep}
	  }}
  {\endlist}
  {\item
  \zihao{5} \mysongti
   \printtext[labelnumberwidth]{%
     \printfield{labelprefix}%
      \printfield{labelnumber}}%
   \addspace}


%========================================================================%
% 前置部分命令
%========================================================================%

% 设置有序和无序列表行距和留白
\setlist[itemize]{noitemsep, topsep=0pt}
\setlist[enumerate]{noitemsep, topsep=0pt}

% 设置全局样式
\let\cleardoublepage=\clearpage
\makeatletter
\let\ps@plain\ps@fancy
\patchcmd{\chapter}{plain}{myfancy}{}{}
\makeatother

\newenvironment{thecenter}
	{\begin{center}\vspace{24pt}\zihao{-2}\heiti}
	{\vspace{18pt}\end{center}}


\newcommand{\cover}{
	\thispagestyle{myclear}
	\vspace*{0.6cm}
	\begin{center}
	\includegraphics[width=107mm]{pic/logo.png}

	{\vspace{1.25cm}\zihao{2}\mysongti \textbf{本科毕业设计（论文）}}
	\vspace{1cm}
	\vspace*{\fill}

	\begin{spacing}{2}
		{\zihao{-2}\myheiti\textbf{\ctitle}}
		\end{spacing}
		\vspace{1em}
		\begin{spacing}{2}
		{\zihao{-2}\mysongti\textbf{\etitle}}
	\end{spacing}
	\vspace*{\fill}

	\newlength{\capwidth}
	\setlength{\capwidth}{\widthof{\zihao{3}学生姓名：}}
	\begin{spacing}{2}
		\begin{tabular}{lc}
			\rule{\capwidth}{0pt} & \rule{5cm}{0pt} \\
			\makebox[\capwidth][s]{\zihao{3}学院：} & \cschool \\ \cline{2-2}
			\makebox[\capwidth][s]{\zihao{3}专业：} & \cmajor \\ \cline{2-2}
			\makebox[\capwidth][s]{\zihao{3}学生姓名：} & \cauthor \\ \cline{2-2}
			\makebox[\capwidth][s]{\zihao{3}学号：} & \cid \\ \cline{2-2}
			\makebox[\capwidth][s]{\zihao{3}指导教师：} & \ctutor \\ \cline{2-2}
			
		\end{tabular}
	\end{spacing}
	\vspace*{1cm}
	
	\zihao{-3}\mysongti \textbf{北京交通大学}\vspace*{0.5ex}

	\yearmonth
	\end{center}
	
	\newpage
}

\newcommand{\ccopyright}{
	\thispagestyle{myclear}
	\vspace{2cm}
	\begin{center}
	{\zihao{-2}\heiti 学士论文版权使用授权书\bigskip}
	\end{center}

	本学士论文作者完全了解北京交通大学有关保留、使用学士论文的规定。特授权北京交通大学可以将学士论文的全部或部分内容编入有关数据库进行检索，提供阅览服务，并采用影印、缩印或扫描等复制手段保存、汇编以供查阅和借阅。\\
	\begin{center}
	（保密的学位论文在解密后适用本授权说明）
	\end{center}
	\vspace{3cm}

	\begin{minipage}[t]{0.5\textwidth}
	学位论文作者签名：\authorsign

	签字日期：\authorsigndate
	\end{minipage} 
	\hfill
	\begin{minipage}[t]{0.4\textwidth}
	指导教师签名：\tutorsign

	签字日期：\tutorsigndate
	\end{minipage} 	
	\newpage
}

\newcommand{\myclpage}{
	\thispagestyle{myclear}
	\mbox{}
	\newpage
}
\newcommand{\myfanpage}{
	\thispagestyle{myfancy}
	\mbox{}
	\newpage
}
\newcommand{\thankspage}{
	\thispagestyle{myempty}
	\chapter*{\makebox[\linewidth]{\zihao{-2}致\hspace{2em}谢}}
	\markboth{致谢}{}
	\addcontentsline{toc}{part}{致\hspace{2em}谢}

	\cthanks
	\newpage
}
\newcommand{\cabspage}{
	\thispagestyle{myfancy}
	\chapter*{\makebox[\linewidth]{\zihao{-2}中文摘要}}
	\markboth{中文摘要}{}
	\addcontentsline{toc}{part}{中文摘要}

	\noindent\mysongti{\textbf{摘要：}}\cabstract \par

	\vspace{2cm}
	
	\noindent \mysongti {\textbf{关键词：}\ckeywords}
	\newpage
}
\newcommand{\eabspage}{
	\thispagestyle{myfancy}
	\chapter*{\makebox[\linewidth]{\zihao{-2}ABSTRACT}}
	\markboth{英文摘要}{}
	\addcontentsline{toc}{part}{ABSTRACT}

	\noindent\mysongti{\textbf{ABSTRACT:}} 
	\noindent\eabstract \par

	\vspace{2cm}
	
	\noindent \mysongti {\textbf{KEYWORDS:\;}\ekeywords} 

	\newpage
}

%========================================================================%
% 结束
%========================================================================%
