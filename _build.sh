#!/usr/bin/env Rscript

#bookdown::render_book("index.Rmd", "bookdown::pdf_book")
#bookdown::render_book("index.Rmd", "bookdown::gitbook")
rmarkdown::render_site(output_format = 'bookdown::pdf_book', encoding = 'UTF-8')
rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')
rmarkdown::render_site(output_format = 'bookdown::epub_book', encoding = 'UTF-8')
