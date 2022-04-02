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
\ProvidesClass{bjtuthesis}[2016/09/10]
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
% \RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{subcaption}
\RequirePackage{pgfplots}
\RequirePackage{tikz}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage{titletoc}
\RequirePackage{fontspec}
\RequirePackage[colorlinks,linkcolor=black,anchorcolor=black,citecolor=black]{hyperref}
% \RequirePackage{gbt7714}
\RequirePackage{calc}
\RequirePackage{datetime}
\RequirePackage{etoolbox}
\RequirePackage{booktabs}
\RequirePackage{floatrow}
\RequirePackage[backend=biber,style=gb7714-2015]{biblatex}
% \RequirePackage[fontsize=11pt]{fontsize}f
% \RequirePackage{tocbibind}

% \RequirePackage{xeCJK}

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

% \setlength{\abovecaptionskip}{8pt}
% \setlength{\belowcaptionskip}{8pt}
\CTEXsetup[name={,}]{chapter}
\CTEXsetup[number={\arabic{chapter}}]{chapter}
\CTEXsetup[beforeskip={-4pt}]{chapter}
\CTEXsetup[afterskip={18pt}]{chapter}
\CTEXsetup[nameformat={}]{chapter}
\CTEXsetup[titleformat={}]{chapter}
\CTEXsetup[format=\heiti\zihao{3}]{chapter}
\CTEXsetup[format=\raggedright\heiti\zihao{-3}]{section}
\CTEXsetup[beforeskip={24pt}]{section}
\CTEXsetup[afterskip={18pt}]{section}
\CTEXsetup[format=\raggedright\heiti\zihao{4}]{subsection}
\CTEXsetup[beforeskip={24pt}]{subsection}
\CTEXsetup[afterskip={18pt}]{subsection}
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
	% Header Settings
	% \fancyhead[LE,RO]{\thepage}
	% \fancyhead[RE]{\nouppercase{\leftmark}}
	% \fancyhead[LO]{\nouppercase{\rightmark}}
	

	% Footer Settings
	% \fancyfoot[CE,CO]{\thepage}
	% \fancyfoot[LE,RO]{}
	% \fancyfoot[RE,LO]{}
	% \fancyhead{}
	\fancyhead[CE,CO]{}
	\fancyhead[L]{\zihao{4}\hwzs 北京交通大学毕业设计（论文）}
	\fancyhead[R]{\zihao{4}\hwzs \leftmark}
	\fancyfoot[CO,CE]{\zihao{5}\thepage}

	% Redefining headrule
	\makeatletter
	\renewcommand{\headrule}{\hrule height 2.5pt \vspace{1pt}\hrule height 1pt}
}

\fancypagestyle{myfancymain}{
	\fancyhead[R]{\zihao{4}\hwzs 正文}
}


% \fancypagestyle{myfancy}{
% \fancyhead{}
% \fancyhead[CL]{\zihao{5}北京交通大学毕业设计（论文）}
% \fancyhead[CR]{\zihao{5}\leftmark}
% \fancyfoot[CO,CE]{\zihao{-5}\thepage}
% }
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
\fancyhead[CE]{\zihao{5}北京交通大学硕士学位论文}
\fancyhead[CO]{\zihao{5}\leftmark}
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
\newcommand{\jobtitle}[1]{\renewcommand{\jobtitle}{#1}}
\newcommand{\category}[1]{\renewcommand{\category}{#1}}
\newcommand{\degree}[1]{\renewcommand{\degree}{#1}}
\newcommand{\major}[1]{\renewcommand{\major}{#1}}
\newcommand{\field}[1]{\renewcommand{\field}{#1}}
\newcommand{\cthanks}[1]{\renewcommand{\cthanks}{#1}}

\newcommand{\cabstract}[1]{\renewcommand{\cabstract}{#1}}
\newcommand{\ckeywords}[1]{\renewcommand{\ckeywords}{#1}}
\newcommand{\eabstract}[1]{\renewcommand{\eabstract}{#1}}
\newcommand{\ekeywords}[1]{\renewcommand{\ekeywords}{#1}}
\newcommand{\cprelude}[1]{\renewcommand{\cprelude}{#1}}
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



% \bibliographystyle{gbt7714-numerical}
% \let\oldcitep\citep
% \newcommand{\citen}[2][]{\textsuperscript{\oldcitep{#2}#1}}
% \renewcommand{\citep}{\citen}
%========================================================================%
% 前置部分命令
%========================================================================%
\let\cleardoublepage=\clearpage
\makeatletter
\let\ps@plain\ps@fancy
% \usepackage{etoolbox}
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
	\vfill

	\begin{spacing}{2}
	{\zihao{-2}\myheiti\textbf{\ctitle}\vspace{1cm}}
	\end{spacing}
	\begin{spacing}{2}
	{\zihao{-2}\mysongti\textbf{\etitle}}
\end{spacing}
	\vfill

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
	\vfill
	
	\zihao{-3}\mysongti \textbf{北京交通大学}\vspace{1ex}

	\yearmonth
	\end{center}
	
	\newpage
}

% \renewcommand{\bibsection}{
% 	\newpage
% 	\thispagestyle{myfancy}
% 	\vspace*{0cm}
% 	\begin{center}
% 		{\zihao{-2}\heiti 参考文献\bigskip}
% 	\end{center}
% }
% \setlength{\bibsep}{0pt plus 0.3ex}
% \renewcommand*{\bibfont}{\zihao{5}}
% \newcommand{\toc}{
% 	\begingroup
% 		\let\cleardoublepage\relax
% 		\let\clearpage\relax
% 		\thispagestyle{myfancy}
% 		\vspace{2cm}
% 	\begin{center}
		
% 	% {\zihao{-2}\heiti 目录}
% 	\end{center}
% 	\fancyhf{}
% 	\addcontentsline{toc}{chapter}{目录}
% 	% \renewcommand\contentsname{{目录}}
% 	\markboth{1}{}
% 	\tableofcontents{}
% 	% \markboth{目录}{}
% 	\endgroup
	
% }



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
	学位论文作者签名：\vspace{4ex}

	签字日期：\hspace{2em}年\hspace{2em}月\hspace{2em}日
	\end{minipage} 
	\hfill
	\begin{minipage}[t]{0.4\textwidth}
	指导教师签名：\vspace{4ex}

	签字日期：\hspace{2em}年\hspace{2em}月\hspace{2em}日
	\end{minipage} 	
	\newpage
}
\newcommand{\ctitlepage}{
	\thispagestyle{myempty}
	{\noindent\zihao{5}学校代码：10004\hfill 密级：秘密}
	\vspace{4ex}
	\begin{center}
	{\zihao{0}\ziju{0.1}\kaishu 北京交通大学\vspace{0.5ex}}

	{\zihao{2}\ziju{0.5}\songti 硕士学位论文\vspace{4ex}}	

	{\zihao{-3}\ctitle\vspace{2ex}}

	{\zihao{-3}\etitle\vspace{6ex}}
	\end{center}
	\begin{minipage}[t]{0.5\textwidth}
	\zihao{4}\noindent
	作者姓名：\cauthor\vspace{2ex}

	导师姓名：\ctutor\vspace{2ex}

	学位类别：\category\vspace{2ex}

	学科专业：\major\vspace{2ex}
	\end{minipage} 
	\hfill
	\begin{minipage}[t]{0.4\textwidth}
	\zihao{4}\noindent
	学\hspace{2em}号：\cid\vspace{2ex}

	职\hspace{2em}称：\jobtitle\vspace{2ex}

	学位级别：\degree\vspace{2ex}

	研究方向：\field\vspace{2ex}
	\end{minipage} 
	\vfill
	\begin{center}\zihao{4}
	北京交通大学\vspace{2ex}

	\cdata
	\end{center}
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
	\chapter*{\makebox[\linewidth]{\zihao{-2}致谢}}
	\markboth{致谢}{}
	% \addtocontents{toc}{\begingroup\protect\setlength{\protect\cftsecindent}{-\leftmargin}}
	\addcontentsline{toc}{part}{致\hspace{2em}谢}
	

	\cthanks
	\newpage
}
\newcommand{\cabspage}{
	\thispagestyle{myfancy}
	\chapter*{\makebox[\linewidth]{\zihao{-2}中文摘要}}
	\markboth{中文摘要}{}
	\addcontentsline{toc}{part}{中文摘要}
	% \begin{thecenter}
	% 中文摘要
	% \end{thecenter}

	\noindent\mysongti{\textbf{摘要：}}\cabstract \par

	\vspace{2cm}
	
	\noindent \mysongti {\textbf{关键词：}\ckeywords}
	\newpage
}
\newcommand{\eabspage}{
	\thispagestyle{myfancy}
	\chapter*{\makebox[\linewidth]{\zihao{-2}ABSTRACT}}
	% \thispagestyle{myfancy}
	\markboth{英文摘要}{}
	\addcontentsline{toc}{part}{ABSTRACT}
	% \begin{thecenter}
	% ABSTRACT
	% \end{thecenter}

	\noindent\mysongti{\textbf{ABSTRACT:}} \par
	\noindent\eabstract \par

	\vspace{2cm}
	
	\noindent \mysongti {\textbf{KEYWORDS:\;}\ekeywords} 

	\newpage
}
\newcommand{\cprepage}{
	\thispagestyle{myfancy}
	\markboth{序言}{}
	\addcontentsline{toc}{chapter}{序言}
	\begin{thecenter}
	序言
	\end{thecenter}

	\cprelude
	\newpage
}
\newcommand{\cstatement}{
	\thispagestyle{myfancy}
	\markboth{独创性声明}{}
	\addcontentsline{toc}{part}{独创性声明}
	\begin{thecenter}
	独创性声明
	\end{thecenter}

	\indent\zihao{5}本人声明所呈交的学位论文是本人在导师指导下进行的研究工作和取得的研究成果，除了文中特别加以标注和致谢之处外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得北京交通大学或其他教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。

	\vspace{2cm}学位论文作者签名：\hspace{6.5em}签字日期：\hspace{4em}年\hspace{2em}月\hspace{2em}日
	\cleardoublepage
}
\newcommand{\clastpage}{
	\thispagestyle{myfancy}
	\markboth{学位论文数据集}{}
	\addcontentsline{toc}{part}{学位论文数据集}
	\begin{thecenter}
	学位论文数据集
	\end{thecenter}
	\begin{center}
	\includegraphics[width=\textwidth]{pic/tab.png}
	\end{center}
}
%========================================================================%
% 结束
%========================================================================%