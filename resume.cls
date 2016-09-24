\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2016/07/06 custom resume class]
\RequirePackage{titlesec}
\RequirePackage{tabularx}
\RequirePackage{pgffor}
\RequirePackage{pbox}
\RequirePackage{geometry}

\setlength{\parindent}{0ex} % Remove indent
\setlength{\parskip}{0ex}
\geometry{letterpaper, portrait, margin=1in}

\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

% Spacing of Section Headings
\titlespacing*{\section}{0pt}{1.85ex}{1.85ex}

\titleformat{\subsection}
    {\large\scshape\raggedright}
    {}{0em}
    {}

\newcommand{\contact}[3]{
    #1 \hfill #2 \hfill #3
}

\newcommand{\name}[1]{
    {\LARGE\scshape\raggedright{#1}}\\
}

\newcommand{\education}[4]{
    \begin{tabularx}{\textwidth}{@{}X r@{}}
        {\large\scshape{#1}} & #2\\
        \foreach \n in {#4}{\em{\n}} & #3
    \end{tabularx}
}

\newcommand{\employment}[5]{
    \begin{tabularx}{\textwidth}{@{}X r@{}}
        {\large\scshape{#1}} & #2\\
       {\em{#4}} - #5 & #3\\
    \end{tabularx}
}

\newcommand{\activity}[3]{
    \begin{tabularx}{\textwidth}{@{}X r@{}}
        {\large\scshape{#1}} & #3\\
        \em{#2} & \\
    \end{tabularx}
}
