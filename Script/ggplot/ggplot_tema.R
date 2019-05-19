library(ggplot2)

theme_sbd <- function(...) {

#clr_bg <- "#f2f2f2"
clr_bg <- "white" # warna putih

#clr_axis_text <- "grey"
clr_axis_text <- "black"

  theme_minimal() +
    theme(
      plot.background = element_rect(fill = clr_bg, color = clr_bg),
      text = element_text(size = 12),
      axis.text = element_text(color = clr_axis_text),
      axis.title = element_text(size = 13, face = "plain"),
      plot.title = element_text(size = 18, face = "bold"),
      strip.text = element_text(face = "bold"),
      legend.title = element_text(size = 10, face = "bold"),
      legend.text = element_text(size = 9),
      legend.position = c(1, 1),
      legend.direction = "vertical",
      legend.justification = c(1,1),
      legend.background = element_rect(fill = clr_bg, color = clr_bg)
    )
}
