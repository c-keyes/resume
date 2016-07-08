\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2016/07/06 custom resume class]
\RequirePackage{titlesec}
\RequirePackage{tabularx}

\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

\titleformat{\subsection}
    {\large\scshape\raggedright}
    {}{0em}
    {}

\newcommand{\name}[1]{
    {\LARGE\scshape\raggedright{#1}}\\
}

\newcommand{\education}[6]{
    \subsection{#1}
    #2\\
    Matriculation: #3\\
    Graduation: #4\\
    Degree: #5\\
    GPA: #6
}

\newcommand{\employment}[4]{
    \begin{tabularx}{\textwidth}{@{}X r@{}}
        {\large\scshape{#1}} & #2\\
        \em{#4} & #3\\
    \end{tabularx}
}
