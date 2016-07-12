\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2016/07/06 custom resume class]
\RequirePackage{titlesec}
\RequirePackage{tabularx}
\RequirePackage{pgffor}
\RequirePackage{pbox}
\RequirePackage{geometry}

\geometry{letterpaper, portrait, margin=1.5in}
\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

\titleformat{\subsection}
    {\large\scshape\raggedright}
    {}{0em}
    {}

\newcommand{\contact}[3]{
    #1 \hfill #2 \hfill #3\\
    \rule{\textwidth}{0.4pt}
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

\newcommand{\employment}[4]{
    \begin{tabularx}{\textwidth}{@{}X r@{}}
        {\large\scshape{#1}} & #2\\
        \em{#4} & #3\\
    \end{tabularx}
}
