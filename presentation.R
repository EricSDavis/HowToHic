## Write the presentation.qmd file

## Define header
header <- '
---
title: "How to Hi-C"
author: "Eric S. Davis"
format:
  revealjs:
    incremental: true
    transition: none
    slide-number: true
    footer: <https://github.com/EricSDavis/HowToHic>
    chalkboard: true
editor: source
editor_options: 
  chunk_output_type: console
---
\n
'
## Define file paths to slide images
files <- list.files(path = "images", full.names = TRUE)

## Define slides
slides <- paste0(
  "## {background-image='", files, "'}", "\n\n"
)

## Turn output to lines
lines <- capture.output(cat(header, slides, sep=""))[-1]

## Write presentation
writeLines(lines, "presentation.qmd")
