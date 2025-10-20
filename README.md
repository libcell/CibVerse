Package: CibVerse
Type: Package
Title: CibLab Research Toolkit for Data Analysis and Visualization
Version: 0.1.0
Authors@R: 
    c(person(given = "Bo",
             family = "Li",
             role = c("aut", "cre"),
             email = "libcell@cqnu.edu.cn",
             comment = c(ORCID = "0000-0001-9944-0003")),
      person(given = "CibLab Team",
             role = "ctb",
             comment = "Codes for graduate students and collaborators from the Cib Laboratory"))
Description: 
    The CibVerse package provides a unified collection of custom functions and tools developed in the Cib Laboratory for data processing, statistical analysis, and visualization in biological and biomedical research. It aims to improve research reproducibility and efficiency by centralizing frequently used R utilities created by the lab. The package integrates modular scripts for data cleaning, exploratory analysis, graphics generation, and report automation, serving as a versatile companion for graduate students and researchers.
License: MIT + file LICENSE
Encoding: UTF-8
LazyData: true
Depends: R (>= 4.2)
Imports: 
    stats,
    utils,
    graphics,
    grDevices
Suggests: 
    ggplot2,
    dplyr,
    tidyr,
    readr
Roxygen: list(markdown = TRUE)
RoxygenNote: 7.3.1
URL: https://github.com/CibLab/CibVerse
BugReports: https://github.com/CibLab/CibVerse/issues
