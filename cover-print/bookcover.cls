%%
%% This is file `bookcover.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ./bookcover.dtx  (with options: `class')
%% This is a generated file.
%% Copyright (C) 2015 Tibor Tomacs
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.2 of this license or (at your option) any later
%% version. The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of
%% LaTeX version 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{bookcover}[2015/03/04 v1.0 class for book covers and dust jackets]
%%
%% Options
\RequirePackage{kvoptions}
\SetupKeyvalOptions{family=bookcover,prefix=bookcover@}
\DeclareVoidOption{10pt}{\PassOptionsToClass{10pt}{article}}
\DeclareVoidOption{11pt}{\PassOptionsToClass{11pt}{article}}
\DeclareVoidOption{12pt}{\PassOptionsToClass{12pt}{article}}
\DeclareVoidOption{grid}{\PassOptionsToPackage{grid}{eso-pic}}
\DeclareStringOption[170mm]{coverwidth}
\DeclareStringOption[240mm]{coverheight}
\DeclareStringOption[5mm]{spinewidth}
\DeclareStringOption[0mm]{flapwidth}
\DeclareStringOption[10mm]{marklength}
\DeclareStringOption[.4pt]{markthick}
\DeclareStringOption[5mm]{bleedwidth}
\DeclareStringOption[red]{markcolor}
\DeclareBoolOption[false]{trimmed}
\ProcessKeyvalOptions{bookcover}

%% Loading class and packages
\LoadClass{article}
\RequirePackage{geometry,graphicx,calc,xcolor,ifthen,tikz,eso-pic}
\RequirePackage[absolute]{textpos}

%% Page style is empty
\pagestyle{empty}

%% New length commands
\newlength{\coverwidth}
\newlength{\coverheight}
\newlength{\spinewidth}
\newlength{\flapwidth}
\newlength{\marklength}
\newlength{\markthick}
\newlength{\bleedwidth}
\newlength{\bookcover@xpos@}
\newlength{\bookcover@ypos@}
\newlength{\bookcover@partwidth@}
\newlength{\bookcover@partheight@}

%% Set length commands
\setlength{\coverwidth}{\bookcover@coverwidth}
\setlength{\coverheight}{\bookcover@coverheight}
\setlength{\spinewidth}{\bookcover@spinewidth}
\setlength{\flapwidth}{\bookcover@flapwidth}
\setlength{\marklength}{\bookcover@marklength}
\setlength{\markthick}{\bookcover@markthick}
\setlength{\bleedwidth}{\bookcover@bleedwidth}
\setlength{\paperwidth}{2\marklength+2\bleedwidth+2\coverwidth+2\flapwidth+\spinewidth}
\setlength{\paperheight}{2\marklength+2\bleedwidth+\coverheight}
\setlength{\parindent}{0pt}

%% If grid is true, then mark thick is 2pt and mark color is red
\ifESO@grid\setlength{\markthick}{2pt}\def\bookcover@markcolor{red}\fi

%% Internal macros
\def\bookcover@xpos#1{\setlength{\bookcover@xpos@}{#1}}
\def\bookcover@ypos#1{\setlength{\bookcover@ypos@}{#1}}
\def\bookcover@partwidth#1{\setlength{\bookcover@partwidth@}{#1}}
\def\bookcover@partheight#1{\setlength{\bookcover@partheight@}{#1}}
\def\bookcover@bgcolor#1{
    \begin{textblock*}{\bookcover@partwidth@}(\bookcover@xpos@,\bookcover@ypos@)
        \tikz\expandafter\fill#1 (0mm,0mm) rectangle (\bookcover@partwidth@,\bookcover@partheight@);
    \end{textblock*}}
\def\bookcover@bgpic#1{
    \begin{textblock*}{\bookcover@partwidth@}(\bookcover@xpos@,\bookcover@ypos@)
        \includegraphics[width=\bookcover@partwidth@,height=\bookcover@partheight@]{#1}
    \end{textblock*}}
\def\bookcover@bgtikz#1{
    \begin{textblock*}{\bookcover@partwidth@}(\bookcover@xpos@,\bookcover@ypos@)
        \begin{tikzpicture}
            #1
        \end{tikzpicture}
    \end{textblock*}}
\def\bookcover@fg#1{
    \begin{textblock*}{\bookcover@partwidth@}(\bookcover@xpos@,\bookcover@ypos@)
        \parbox[t][\bookcover@partheight@][t]{\bookcover@partwidth@}{#1}
    \end{textblock*}}
\def\bookcover@vmark{
    \begin{textblock*}{\bookcover@partwidth@}(\bookcover@xpos@,\bookcover@ypos@)
        {\color{\bookcover@markcolor}\rule[0pt]{\markthick}{\marklength}}
    \end{textblock*}}
\def\bookcover@hmark{
    \begin{textblock*}{\bookcover@partwidth@}(\bookcover@xpos@,\bookcover@ypos@)
        {\color{\bookcover@markcolor}\rule[0pt]{\marklength}{\markthick}}
    \end{textblock*}}
\def\bookcover@reset{
    \def\bookcover@bgcolor@whole{}
    \def\bookcover@bgcolor@wholewf{}
    \def\bookcover@bgcolor@back{}
    \def\bookcover@bgcolor@front{}
    \def\bookcover@bgcolor@backflap{}
    \def\bookcover@bgcolor@frontflap{}
    \def\bookcover@bgcolor@spine{}
    \def\bookcover@bgpic@whole{}
    \def\bookcover@bgpic@wholewf{}
    \def\bookcover@bgpic@back{}
    \def\bookcover@bgpic@front{}
    \def\bookcover@bgpic@backflap{}
    \def\bookcover@bgpic@frontflap{}
    \def\bookcover@bgpic@spine{}
    \def\bookcover@bgtikz@whole{}
    \def\bookcover@bgtikz@wholewf{}
    \def\bookcover@bgtikz@back{}
    \def\bookcover@bgtikz@front{}
    \def\bookcover@bgtikz@backflap{}
    \def\bookcover@bgtikz@frontflap{}
    \def\bookcover@bgtikz@spine{}
    \def\bookcover@fgfirst@back{}
    \def\bookcover@fgfirst@front{}
    \def\bookcover@fgfirst@spine{}
    \def\bookcover@fgfirst@backflap{}
    \def\bookcover@fgfirst@frontflap{}
    \def\bookcover@fgfirst@remark{}
    \def\bookcover@fgsecond@back{}
    \def\bookcover@fgsecond@front{}
    \def\bookcover@fgsecond@spine{}
    \def\bookcover@fgsecond@backflap{}
    \def\bookcover@fgsecond@frontflap{}}

%% Reset datas
\bookcover@reset

%% Definition of command \setbookcover
\long\def\setbookcover#1#2#3{
    \ifthenelse{\equal{#1}{bgcolor}}{
        \ifthenelse{\equal{#2}{whole}}{\def\bookcover@bgcolor@whole{[#3]}}{}
        \ifthenelse{\equal{#2}{whole without flaps}}{\def\bookcover@bgcolor@wholewf{[#3]}}{}
        \ifthenelse{\equal{#2}{back}}{\def\bookcover@bgcolor@back{[#3]}}{}
        \ifthenelse{\equal{#2}{front}}{\def\bookcover@bgcolor@front{[#3]}}{}
        \ifthenelse{\equal{#2}{back flap}}{\def\bookcover@bgcolor@backflap{[#3]}}{}
        \ifthenelse{\equal{#2}{front flap}}{\def\bookcover@bgcolor@frontflap{[#3]}}{}
        \ifthenelse{\equal{#2}{spine}}{\def\bookcover@bgcolor@spine{[#3]}}{}}{}
    \ifthenelse{\equal{#1}{bgpic}}{
        \ifthenelse{\equal{#2}{whole}}{\def\bookcover@bgpic@whole{#3}}{}
        \ifthenelse{\equal{#2}{whole without flaps}}{\def\bookcover@bgpic@wholewf{#3}}{}
        \ifthenelse{\equal{#2}{back}}{\def\bookcover@bgpic@back{#3}}{}
        \ifthenelse{\equal{#2}{front}}{\def\bookcover@bgpic@front{#3}}{}
        \ifthenelse{\equal{#2}{back flap}}{\def\bookcover@bgpic@backflap{#3}}{}
        \ifthenelse{\equal{#2}{front flap}}{\def\bookcover@bgpic@frontflap{#3}}{}
        \ifthenelse{\equal{#2}{spine}}{\def\bookcover@bgpic@spine{#3}}{}}{}
    \ifthenelse{\equal{#1}{bgtikz}}{
        \ifthenelse{\equal{#2}{whole}}{\def\bookcover@bgtikz@whole{#3}}{}
        \ifthenelse{\equal{#2}{whole without flaps}}{\def\bookcover@bgtikz@wholewf{#3}}{}
        \ifthenelse{\equal{#2}{back}}{\def\bookcover@bgtikz@back{#3}}{}
        \ifthenelse{\equal{#2}{front}}{\def\bookcover@bgtikz@front{#3}}{}
        \ifthenelse{\equal{#2}{back flap}}{\def\bookcover@bgtikz@backflap{#3}}{}
        \ifthenelse{\equal{#2}{front flap}}{\def\bookcover@bgtikz@frontflap{#3}}{}
        \ifthenelse{\equal{#2}{spine}}{\def\bookcover@bgtikz@spine{#3}}{}}{}
    \ifthenelse{\equal{#1}{fgfirst}}{
        \ifthenelse{\equal{#2}{back}}{\def\bookcover@fgfirst@back{#3}}{}
        \ifthenelse{\equal{#2}{front}}{\def\bookcover@fgfirst@front{#3}}{}
        \ifthenelse{\equal{#2}{spine}}{\def\bookcover@fgfirst@spine{#3}}{}
        \ifthenelse{\equal{#2}{back flap}}{\def\bookcover@fgfirst@backflap{#3}}{}
        \ifthenelse{\equal{#2}{front flap}}{\def\bookcover@fgfirst@frontflap{#3}}{}
        \ifthenelse{\equal{#2}{remark}}{\def\bookcover@fgfirst@remark{#3}}{}}{}
    \ifthenelse{\equal{#1}{fgsecond}}{
        \ifthenelse{\equal{#2}{back}}{\def\bookcover@fgsecond@back{#3}}{}
        \ifthenelse{\equal{#2}{front}}{\def\bookcover@fgsecond@front{#3}}{}
        \ifthenelse{\equal{#2}{spine}}{\def\bookcover@fgsecond@spine{#3}}{}
        \ifthenelse{\equal{#2}{back flap}}{\def\bookcover@fgsecond@backflap{#3}}{}
        \ifthenelse{\equal{#2}{front flap}}{\def\bookcover@fgsecond@frontflap{#3}}{}}{}}

%% Definition of command \makebookcover
\def\makebookcover{
%% Background
\bookcover@ypos{\marklength}
\bookcover@partheight{\coverheight+2\bleedwidth}
%% {bgcolor}{whole}
\ifx\bookcover@bgcolor@whole\@empty\else
    \bookcover@xpos{\marklength}
    \bookcover@partwidth{2\coverwidth+2\bleedwidth+2\flapwidth+\spinewidth}
    \bookcover@bgcolor{\bookcover@bgcolor@whole}\fi
%% {bgcolor}{whole without flaps}
\ifx\bookcover@bgcolor@wholewf\@empty\else
    \ifdim\flapwidth>0mm
        \bookcover@xpos{\marklength+\bleedwidth+\flapwidth}
        \bookcover@partwidth{2\coverwidth+\spinewidth}
    \else
        \bookcover@xpos{\marklength}
        \bookcover@partwidth{2\coverwidth+2\bleedwidth+\spinewidth}\fi
    \bookcover@bgcolor{\bookcover@bgcolor@wholewf}\fi
%% {bgcolor}{back flap}
\ifx\bookcover@bgcolor@backflap\@empty\else\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength}
    \bookcover@partwidth{\flapwidth+\bleedwidth}
    \bookcover@bgcolor{\bookcover@bgcolor@backflap}\fi\fi
%% {bgcolor}{back}
\ifx\bookcover@bgcolor@back\@empty\else
    \ifdim\flapwidth>0mm
        \bookcover@xpos{\marklength+\bleedwidth+\flapwidth}
        \bookcover@partwidth{\coverwidth}
    \else
        \bookcover@xpos{\marklength}
        \bookcover@partwidth{\coverwidth+\bleedwidth}\fi
    \bookcover@bgcolor{\bookcover@bgcolor@back}\fi
%% {bgcolor}{spine}
\ifx\bookcover@bgcolor@spine\@empty\else
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth}
    \bookcover@partwidth{\spinewidth}
    \bookcover@bgcolor{\bookcover@bgcolor@spine}\fi
%% {bgcolor}{front}
\ifx\bookcover@bgcolor@front\@empty\else
    \ifdim\flapwidth>0mm
        \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth+\spinewidth}
        \bookcover@partwidth{\coverwidth}
    \else
        \bookcover@xpos{\marklength+\bleedwidth+\coverwidth+\spinewidth}
        \bookcover@partwidth{\coverwidth+\bleedwidth}\fi
    \bookcover@bgcolor{\bookcover@bgcolor@front}\fi
%% {bgcolor}{front flap}
\ifx\bookcover@bgcolor@frontflap\@empty\else\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+2\coverwidth+\spinewidth}
    \bookcover@partwidth{\flapwidth+\bleedwidth}
    \bookcover@bgcolor{\bookcover@bgcolor@frontflap}\fi\fi
%% {bgpic}{whole}
\ifx\bookcover@bgpic@whole\@empty\else
    \bookcover@xpos{\marklength}
    \bookcover@partwidth{2\coverwidth+2\bleedwidth+2\flapwidth+\spinewidth}
    \bookcover@bgpic{\bookcover@bgpic@whole}\fi
%% {bgpic}{whole without flaps}
\ifx\bookcover@bgpic@wholewf\@empty\else
    \ifdim\flapwidth>0mm
        \bookcover@xpos{\marklength+\bleedwidth+\flapwidth}
        \bookcover@partwidth{2\coverwidth+\spinewidth}
    \else
        \bookcover@xpos{\marklength}
        \bookcover@partwidth{2\coverwidth+2\bleedwidth+\spinewidth}\fi
    \bookcover@bgpic{\bookcover@bgpic@wholewf}\fi
%% {bgpic}{back flap}
\ifx\bookcover@bgpic@backflap\@empty\else\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength}
    \bookcover@partwidth{\flapwidth+\bleedwidth}
    \bookcover@bgpic{\bookcover@bgpic@backflap}\fi\fi
%% {bgpic}{back}
\ifx\bookcover@bgpic@back\@empty\else
    \ifdim\flapwidth>0mm
        \bookcover@xpos{\marklength+\bleedwidth+\flapwidth}
        \bookcover@partwidth{\coverwidth}
    \else
        \bookcover@xpos{\marklength}
        \bookcover@partwidth{\coverwidth+\bleedwidth}\fi
    \bookcover@bgpic{\bookcover@bgpic@back}\fi
%% {bgpic}{spine}
\ifx\bookcover@bgpic@spine\@empty\else
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth}
    \bookcover@partwidth{\spinewidth}
    \bookcover@bgpic{\bookcover@bgpic@spine}\fi
%% {bgpic}{front}
\ifx\bookcover@bgpic@front\@empty\else
    \ifdim\flapwidth>0mm
        \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth+\spinewidth}
        \bookcover@partwidth{\coverwidth}
    \else
        \bookcover@xpos{\marklength+\bleedwidth+\coverwidth+\spinewidth}
        \bookcover@partwidth{\coverwidth+\bleedwidth}\fi
    \bookcover@bgpic{\bookcover@bgpic@front}\fi
%% {bgpic}{front flap}
\ifx\bookcover@bgpic@frontflap\@empty\else\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+2\coverwidth+\spinewidth}
    \bookcover@partwidth{\flapwidth+\bleedwidth}
    \bookcover@bgpic{\bookcover@bgpic@frontflap}\fi\fi
%% {bgtikz}{whole}
\ifx\bookcover@bgtikz@whole\@empty\else
    \bookcover@xpos{\marklength}
    \bookcover@partwidth{2\coverwidth+2\bleedwidth+2\flapwidth+\spinewidth}
    \bookcover@bgtikz{\bookcover@bgtikz@whole}\fi
%% {bgtikz}{whole without flaps}
\ifx\bookcover@bgtikz@wholewf\@empty\else
    \ifdim\flapwidth>0mm
        \bookcover@xpos{\marklength+\bleedwidth+\flapwidth}
        \bookcover@partwidth{2\coverwidth+\spinewidth}
    \else
        \bookcover@xpos{\marklength}
        \bookcover@partwidth{2\coverwidth+2\bleedwidth+\spinewidth}\fi
    \bookcover@bgtikz{\bookcover@bgtikz@wholewf}\fi
%% {bgtikz}{back flap}
\ifx\bookcover@bgtikz@backflap\@empty\else\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength}
    \bookcover@partwidth{\flapwidth+\bleedwidth}
    \bookcover@bgtikz{\bookcover@bgtikz@backflap}\fi\fi
%% {bgtikz}{back}
\ifx\bookcover@bgtikz@back\@empty\else
    \ifdim\flapwidth>0mm
        \bookcover@xpos{\marklength+\bleedwidth+\flapwidth}
        \bookcover@partwidth{\coverwidth}
    \else
        \bookcover@xpos{\marklength}
        \bookcover@partwidth{\coverwidth+\bleedwidth}\fi
    \bookcover@bgtikz{\bookcover@bgtikz@back}\fi
%% {bgtikz}{spine}
\ifx\bookcover@bgtikz@spine\@empty\else
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth}
    \bookcover@partwidth{\spinewidth}
    \bookcover@bgtikz{\bookcover@bgtikz@spine}\fi
%% {bgtikz}{front}
\ifx\bookcover@bgtikz@front\@empty\else
    \ifdim\flapwidth>0mm
        \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth+\spinewidth}
        \bookcover@partwidth{\coverwidth}
    \else
        \bookcover@xpos{\marklength+\bleedwidth+\coverwidth+\spinewidth}
        \bookcover@partwidth{\coverwidth+\bleedwidth}\fi
    \bookcover@bgtikz{\bookcover@bgtikz@front}\fi
%% {bgtikz}{front flap}
\ifx\bookcover@bgtikz@frontflap\@empty\else\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+2\coverwidth+\spinewidth}
    \bookcover@partwidth{\flapwidth+\bleedwidth}
    \bookcover@bgtikz{\bookcover@bgtikz@frontflap}\fi\fi
%% Foreground
\bookcover@ypos{\marklength+\bleedwidth}
\bookcover@partheight{\coverheight}
%% {fgsecond}{back flap}
\ifx\bookcover@fgsecond@backflap\@empty\else\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth}
    \bookcover@partwidth{\flapwidth}
    \bookcover@fg{\bookcover@fgsecond@backflap}\fi\fi
%% {fgsecond}{back}
\ifx\bookcover@fgsecond@back\@empty\else
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth}
    \bookcover@partwidth{\coverwidth}
    \bookcover@fg{\bookcover@fgsecond@back}\fi
%% {fgsecond}{spine}
\ifx\bookcover@fgsecond@spine\@empty\else
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth}
    \bookcover@partwidth{\spinewidth}
    \bookcover@fg{\bookcover@fgsecond@spine}\fi
%% {fgsecond}{front}
\ifx\bookcover@fgsecond@front\@empty\else
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth+\spinewidth}
    \bookcover@partwidth{\coverwidth}
    \bookcover@fg{\bookcover@fgsecond@front}\fi
%% {fgsecond}{front flap}
\ifx\bookcover@fgsecond@frontflap\@empty\else\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+2\coverwidth+\spinewidth}
    \bookcover@partwidth{\flapwidth}
    \bookcover@fg{\bookcover@fgsecond@frontflap}\fi\fi
%% {fgfirst}{back flap}
\ifx\bookcover@fgfirst@backflap\@empty\else\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth}
    \bookcover@partwidth{\flapwidth}
    \bookcover@fg{\bookcover@fgfirst@backflap}\fi\fi
%% {fgfirst}{back}
\ifx\bookcover@fgfirst@back\@empty\else
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth}
    \bookcover@partwidth{\coverwidth}
    \bookcover@fg{\bookcover@fgfirst@back}\fi
%% {fgfirst}{spine}
\ifx\bookcover@fgfirst@spine\@empty\else
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth}
    \bookcover@partwidth{\spinewidth}
    \bookcover@fg{\bookcover@fgfirst@spine}\fi
%% {fgfirst}{front}
\ifx\bookcover@fgfirst@front\@empty\else
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth+\spinewidth}
    \bookcover@partwidth{\coverwidth}
    \bookcover@fg{\bookcover@fgfirst@front}\fi
%% {fgfirst}{front flap}
\ifx\bookcover@fgfirst@frontflap\@empty\else\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+2\coverwidth+\spinewidth}
    \bookcover@partwidth{\flapwidth}
    \bookcover@fg{\bookcover@fgfirst@frontflap}\fi\fi
%% {fgfirst}{remark}
\ifx\bookcover@fgfirst@remark\@empty\else\ifdim\marklength>0mm
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth+\spinewidth}
    \bookcover@ypos{0mm}
    \bookcover@partwidth{\coverwidth}
    \bookcover@partheight{\marklength}
    \begin{textblock*}{\bookcover@partwidth@}(\bookcover@xpos@,\bookcover@ypos@)
        \parbox[t][\bookcover@partheight@][c]{\bookcover@partwidth@}
            {\centering\bookcover@fgfirst@remark\par}
    \end{textblock*}\fi\fi
%% Marks
%% mark top
\bookcover@ypos{0mm}
\bookcover@partwidth{\markthick}
%% mark top 1
\bookcover@xpos{\marklength+\bleedwidth-.5\markthick}
\bookcover@vmark
%% mark top 2
\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth-.5\markthick}
    \bookcover@vmark\fi
%% mark top 3
\bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth-.5\markthick}
\bookcover@vmark
%% mark top 4
\bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth+\spinewidth-.5\markthick}
\bookcover@vmark
%% mark top 5
\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+2\coverwidth+\spinewidth-.5\markthick}
    \bookcover@vmark\fi
%% mark top 6
\bookcover@xpos{\marklength+\bleedwidth+2\flapwidth+2\coverwidth+\spinewidth-.5\markthick}
\bookcover@vmark
%% mark bottom
\bookcover@ypos{\paperheight-\marklength}
\bookcover@partwidth{\markthick}
%% mark bottom 1
\bookcover@xpos{\marklength+\bleedwidth-.5\markthick}
\bookcover@vmark
%% mark bottom 2
\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth-.5\markthick}
    \bookcover@vmark\fi
%% mark bottom 3
\bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth-.5\markthick}
\bookcover@vmark
%% mark bottom 4
\bookcover@xpos{\marklength+\bleedwidth+\flapwidth+\coverwidth+\spinewidth-.5\markthick}
\bookcover@vmark
%% mark bottom 5
\ifdim\flapwidth>0mm
    \bookcover@xpos{\marklength+\bleedwidth+\flapwidth+2\coverwidth+\spinewidth-.5\markthick}
    \bookcover@vmark\fi
%% mark bottom 6
\bookcover@xpos{\marklength+\bleedwidth+2\flapwidth+2\coverwidth+\spinewidth-.5\markthick}
\bookcover@vmark
%% mark left
\bookcover@xpos{0mm}
\bookcover@partwidth{\marklength}
%% mark left 1
\bookcover@ypos{\marklength+\bleedwidth-.5\markthick}
\bookcover@hmark
%% mark left 2
\bookcover@ypos{\marklength+\bleedwidth+\coverheight-.5\markthick}
\bookcover@hmark
%% mark right
\bookcover@xpos{\paperwidth-\marklength}
\bookcover@partwidth{\marklength}
%% mark right 1
\bookcover@ypos{\marklength+\bleedwidth-.5\markthick}
\bookcover@hmark
%% mark right 2
\bookcover@ypos{\marklength+\bleedwidth+\coverheight-.5\markthick}
\bookcover@hmark
%% Trim
\ifbookcover@trimmed
    \begin{textblock*}{\paperwidth}(0mm,0mm)
        \begin{tikzpicture}
            \begin{scope}[color=white]
                \fill(0mm,\marklength-2pt)--
                     (\paperwidth,\marklength-2pt)--
                     (\paperwidth,\marklength+\bleedwidth)--
                     (0mm,\marklength+\bleedwidth)--cycle;
                \fill(0mm,\paperheight-\marklength+2pt)--
                     (\paperwidth,\paperheight-\marklength+2pt)--
                     (\paperwidth,\paperheight-\marklength-\bleedwidth)--
                     (0mm,\paperheight-\marklength-\bleedwidth)--cycle;
                \fill(0mm,0mm)--
                     (\marklength+\bleedwidth,0mm)--
                     (\marklength+\bleedwidth,\paperheight)--
                     (0mm,\paperheight)--cycle;
                \fill(\paperwidth-\marklength-\bleedwidth,0mm)--
                     (\paperwidth,0mm)--
                     (\paperwidth,\paperheight)--
                     (\paperwidth-\marklength-\bleedwidth,\paperheight)--cycle;
            \end{scope}
            \draw(\marklength+\bleedwidth,\marklength+\bleedwidth)--
                 (\paperwidth-\marklength-\bleedwidth,\marklength+\bleedwidth)--
                 (\paperwidth-\marklength-\bleedwidth,\paperheight-\marklength-\bleedwidth)--
                 (\marklength+\bleedwidth,\paperheight-\marklength-\bleedwidth)--cycle;
        \end{tikzpicture}
    \end{textblock*}\fi
%% New book cover
\mbox{}
\newpage
\bookcover@reset}
\endinput
%%
%% End of file `bookcover.cls'.
