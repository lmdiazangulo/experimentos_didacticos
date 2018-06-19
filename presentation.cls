\LoadClass{beamer}

\usepackage[utf8]{inputenc}
\usepackage[spanish,es-nodecimaldot]{babel}
\usepackage{bm}
\usepackage{amsfonts}
\usepackage{color}
\usepackage{graphicx}
\usepackage{bibentry}
\usepackage{hyperref}
\usepackage{setspace}
\usepackage{soul}
\usepackage{todonotes}
\usepackage{etoolbox}
\usepackage{booktabs}
\usepackage{transparent}
\usepackage{eso-pic}
\usepackage{bibentry}
\usepackage{ragged2e}
\usepackage{subfig}
\usepackage{caption}
\usepackage{todonotes}
\usepackage{multimedia}
\captionsetup{labelformat=empty,labelsep=none}
\nobibliography*

\captionsetup[subfigure]{justification=justified,singlelinecheck=false}

\apptocmd{\frame}{}{\justifying}{} % Allow optional arguments after frame.


\setbeamertemplate{bibliography item}[triangle]
\setbeamertemplate{bibliography entry author}{}
\setbeamertemplate{bibliography entry title}{}
\setbeamertemplate{bibliography entry location}{}
\setbeamertemplate{bibliography entry note}{}

\setbeamertemplate{caption}{\raggedright\insertcaption\par}
\setbeamertemplate{itemize items}[circle]

\makeatletter
\patchcmd{\beamer@sectionintoc}{\vskip1.5em}{\vskip0.75em}{}{}
\makeatother

\AtBeginSection[]{
	\begin{frame}
	\vfill
	\centering
	\begin{beamercolorbox}[sep=8pt,center]{title}
		\usebeamerfont{title}\insertsectionhead\par%
	\end{beamercolorbox}
	\vfill
\end{frame}
}

\graphicspath{
{./fig/}
}

%\usetheme{Darmstadt}
\usetheme{Antibes}

\AtBeginSection[]{
\begin{frame}
\vfill
\centering
\begin{beamercolorbox}[sep=8pt,center]{title}
	\usebeamerfont{title}\insertsectionhead\par%
\end{beamercolorbox}
\vfill
\end{frame}
}

\usefonttheme[onlymath]{serif}
\date{}

\logo{
{\transparent{0.05}\includegraphics[width=6cm,height=6cm]{escudougr.pdf}}
}

\useinnertheme{circles}
\setbeamertemplate{caption}{\raggedright\insertcaption\par}
\definecolor{myblue0}{rgb}{0.1,0.3,0.5}
\definecolor{myblue}{rgb}{0.15,0.35,0.58}
\definecolor{myblue1}{rgb}{0.17,0.37,0.63}
\definecolor{myblue2}{rgb}{0.20,0.45,0.68}
\definecolor{darkgray}{rgb}{0.15,0.15,0.15}

\setbeamercolor{palette quaternary}{bg=myblue0}

\setbeamercolor{normal text}{fg=darkgray}
\setbeamercolor{block text}{fg=darkgray}

\setbeamercolor{section in head/foot}   {fg=white, bg=myblue}
\setbeamercolor{subsection in head/foot}{fg=white, bg=myblue1}
\setbeamercolor{structure}{fg=white, bg=myblue2}
\setbeamercolor{frametitle}             {fg=white, bg=myblue2}
\setbeamercolor{topcolor}{fg=red,bg=myblue}
\setbeamercolor{title}                  {use=structure,fg=white,bg=myblue}
\setbeamercolor{block title}            {fg=white, bg=myblue}
\setbeamercolor{structure}{fg=myblue2} % itemize, enumerate, etc
\setbeamercolor{section in toc}{fg=myblue2} % TOC sections


% \setbeamercolor{upper separation line head}{bg=red!70!black}

\setbeamertemplate{blocks}[default]

% Mathematics
\newcommand{\gaussianDisplacement}{\mu}
\newcommand{\gaussianSpread}{\sigma}
\newcommand{\Bessel}{J}
\newcommand{\imagUnit}{j}
\newcommand{\parDer}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\der}[2]{\text{d}_#2 #1}
\newcommand{\vecPath}{\vec{l}}

%\renewcommand{\vec}[1]{{\bf #1}}
\newcommand{\vecs}[1]{{\bf #1}}
\newcommand{\vecn}[1]{{\bf\hat{#1}}}
\newcommand{\evec}{\mathbf{e}}
%\renewcommand{\widetilde}[1]{\mathbb{#1}}
\newcommand{\normal}{{\bf\hat{n}}}
\newcommand{\F}{\vec{F}}

% Geometry
\newcommand{\orthonormal}[1]{\mathbf{u}_{#1}}
\newcommand{\unitNormal}{\hat{n}}
\newcommand{\localCoordinate}[1]{\xi_{#1}}
\newcommand{\stretchedLocalCoordinate}[1]{\tilde{\xi}_{#1}}
\newcommand{\posNorm}{r}
\newcommand{\pos}{\vec{\posNorm}}
\newcommand{\unitPos}{\hat{\posNorm}}
\newcommand{\src}{\pos'}
\newcommand{\posSrcNorm}{R}
\newcommand{\posSrc}{\vec{\posSrcNorm}}
\newcommand{\unitPosSrc}{\hat{\posSrcNorm}}
\newcommand{\stepFunction}{u}
\newcommand{\curl}{\nabla \times}
\newcommand{\divergence}{\nabla \cdot}
\newcommand{\velocity}{\vec{v}}
\newcommand{\torqueNorm}{\tau}
\newcommand{\torque}{\vec{\torqueNorm}}


\newcommand{\computationalDomain}{\Omega}
\newcommand{\elementIndex}{k}
\newcommand{\numberOfElements}{K}
\newcommand{\setOfBasisFunctions}{\mathcal{B}}
\newcommand{\basisFunction}{\vec{\psi}}
\newcommand{\coeffBasisFunction}{\bm{\basisFunction}}
\newcommand{\setOfNodalFunctions}{\mathcal{B}_\text{n}}
\newcommand{\numberOfBasisFunctions}{{N}}
\newcommand{\lagrangePol}{l}
\newcommand{\legendrePol}{P}
\newcommand{\simplexCoord}{\zeta}
\newcommand{\numberOfFaces}{{N_f}}
\newcommand{\numberOfNodes}{{N_p}}
\newcommand{\numberOfFaceNodes}{N_{fp}}

% Electromagnetism
\newcommand{\elecNorm}{E}
\newcommand{\magnNorm}{H}
\newcommand{\elec}{\vec{\elecNorm}}
\newcommand{\magn}{\vec{\magnNorm}}
\newcommand{\E}{\elec}
\newcommand{\B}{B}
\newcommand{\magnFlux}{\vec{\B}}
\newcommand{\elecFlux}{\vec{D}}
\newcommand{\polarization}{\vec{P}}
\newcommand{\field}{\vec{Q}}
\newcommand{\current}{I}
\newcommand{\currentDensityNorm}{J}
\newcommand{\currentDensity}{\vec{\currentDensityNorm}}
\newcommand{\magnCurrent}{\vec{M}}
\newcommand{\charge}{q}
\newcommand{\chargeDensity}{\rho}
\newcommand{\conductivity}{\sigma}
\newcommand{\resistivity}{\rho}
\newcommand{\emf}{\mathcal{E}}
\newcommand{\magneticMomentNorm}{\mu}
\newcommand{\magneticMoment}{\magneticMomentNorm}

\newcommand{\impedance}{Z}
\newcommand{\admitance}{Y}
\newcommand{\intrinsicImpedance}{\eta}
\newcommand{\propagationConstant}{\gamma}
\newcommand{\suceptibility}{\chi}

\newcommand{\permittivity}{\varepsilon}
\newcommand{\permeability}{\mu}
\newcommand{\speedOfLight}{c}
\newcommand{\wavenumber}{k}
\newcommand{\eigfrequency}{\omega}
\newcommand{\constantCoulomb}{\kappa}
\newcommand{\fracCouloumb}{\frac{1}{4\pi\permittivity_0}}
\newcommand{\fracBiotSavart}{\frac{\permeability_0}{4 \pi}}

% Matrix Operators
\newcommand{\tensor}[1]{\bar{\bar{#1}}}
\newcommand{\extraction}{\bar{\mathcal{E}}}
\newcommand{\massMatrix}{\mathcal{M}}
\newcommand{\stiffMatrix}{\mathcal{S}}
\newcommand{\fluxMatrix}{\mathcal{F}}
\newcommand{\eigMatrix}{\mathcal{W}}
\newcommand{\diagonalizingMatrix}{\mathcal{P}}
\newcommand{\externalMatrix}{\mathcal{V}}
\newcommand{\impmatrix}{\tilde{\mathcal{Z}}}
\newcommand{\resmatrix}{\mathcal{R}}
\newcommand{\semidiscretization}{\mathcal{L}}

% Units.
\newcommand{\Newton}{\text{N}}
\newcommand{\meter}{\text{m}}
\newcommand{\second}{\text{s}}
\newcommand{\Coulomb}{\text{C}}
\newcommand{\Volt}{\text{V}}
\newcommand{\Ampere}{\text{A}}
\newcommand{\Farad}{\text{F}}
\newcommand{\Ohm}{\Omega}
\newcommand{\Siemens}{\text{S}}
\newcommand{\Jules}{\text{J}}
\newcommand{\Watt}{\text{W}}
\newcommand{\gram}{\text{g}}
\newcommand{\Tesla}{\text{T}}
\newcommand{\Weber}{\text{Wb}}
\newcommand{\Henry}{\text{H}}
\newcommand{\Hertz}{\text{Hz}}

% Prefix
\newcommand{\mega}{\text{M}}
\newcommand{\kilo}{\text{k}}
\newcommand{\centi}{\text{c}}
\newcommand{\mili}{\text{m}}
\newcommand{\micro}{\mu}
\newcommand{\nano}{\text{n}}
\newcommand{\pico}{\text{p}}
\newcommand{\femto}{\text{f}}
