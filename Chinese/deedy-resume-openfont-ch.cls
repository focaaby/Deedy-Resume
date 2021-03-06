% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{title}{HTML}{0D47A1}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/NotoSansCJKtc/,BoldFont=NotoSansCJKtc-Bold]{NotoSansCJKtc-Regular}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/NotoSansCJKtc/]{NotoSansCJKtc-Thin}\fontsize{8pt}{10pt}\selectfont
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[2]{
\centering{
\color{title}
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/NotoSansCJKtc/]{NotoSansCJKtc-Bold}\selectfont #1
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/NotoSansCJKtc/]{NotoSansCJKtc-Medium}\fontsize{11pt}{14pt}\selectfont #2}
}

% Section seperators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0.5em}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{title}
\scshape\fontspec[Path = fonts/NotoSansCJKtc/]{NotoSansCJKtc-Black}\fontsize{18pt}{36pt}\selectfont \raggedright\uppercase}{}{0em}{}[{\titlerule[1.25pt]}]

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/NotoSansCJKtc/]{NotoSansCJKtc-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/NotoSansCJKtc/]{NotoSansCJKtc-Bold} \fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/NotoSansCJKtc/]{NotoSansCJKtc-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/NotoSansCJKtc/]{NotoSansCJKtc-Light}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1.5pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

\usepackage{xeCJK}
\XeTeXlinebreaklocale "zh"         % 這兩行一定要加，中文才能自動換行
\XeTeXlinebreakskip = 0pt plus 1pt
\setCJKmainfont [Path = fonts/NotoSansCJKtc/,BoldFont = NotoSansCJKtc-Bold]{NotoSansCJKtc-Regular}
\newcommand{\mybaselinestretch}{1.4}
