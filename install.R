

if (TRUE) {
    install.packages("devtools", repos='http://cran.rstudio.com')

    pkg_nms <- c('tidyverse', 'stringr', 'plyr', 'magrittr', 'haven',
                 'styler',
                 'visdat', 'ggpubr', 'colorspace', 'summarytools',
                 'shiny', 'shinydashboard',
                 'shinyjs', 'shinyBS', 'shinythemes', 'shinymaterial', 
                 'markdown', 'crosstalk', 'd3heatmap', 'visNetwork', 
                 'parallel', 'methods', 'future', 
                 'htmltools', 'htmlwidgets', 'DT', 'plotly', 'formattable')
    sapply(pkg_nms, install.packages, repos='http://cran.rstudio.com')

    # the latest Hmisc package has installation error, 2018-01-16
    # and SASxport is able to install after the installation of Hmisc
    devtools::install_version("Hmisc", version = "3.17-2")
    
    # for BEACH required packages
    # pkg_2inst <- c("rtf", "sas7bdat", "WriteXLS", "SASxport")
    pkg_2inst <- c("rtf", "sas7bdat", "WriteXLS", "SASxport", "rJava") # rJava needs more effort to install
    sapply(pkg_2inst, install.packages)
 
    devtools::install_github("timelyportfolio/sweetalertR")   
    
    # Bioc packages: 'DESeq2', 'limma', # RNAseq
    # source("https://bioconductor.org/biocLite.R")
    # biocLite("biomaRt", suppressUpdates=TRUE)
    # biocLite("DESeq2", suppressUpdates=TRUE)
    # biocLite("limma", suppressUpdates=TRUE)
}



if (TRUE)  {     # new package
    install.packages('summarytools')
    install.packages('shinyWidgets')
    install.packages('janitor')
}    # End  

if (TRUE)  {     # biocond
    source("https://bioconductor.org/biocLite.R")
    biocLite("DOSE", ask=FALSE)
    biocLite("clusterProfiler", ask=FALSE)
    biocLite("org.Hs.eg.db", ask=FALSE)
    biocLite("biomaRt", ask=FALSE)
}    # End  


