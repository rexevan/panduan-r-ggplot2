#library(scales)
#library(dplyr)

skl_rupiah <- function(dari = "rupiah", ke = "rupiah") {
  pembilang <- dplyr::case_when(
    dari == "rupiah" ~ 1,
    dari == "ribu" ~ 10^3,
    dari == "juta" ~ 10^6,
    dari == "miliar" ~ 10^9,
    dari == "triliun" ~ 10^12
  )
  penyebut <- dplyr::case_when(
    ke == "rupiah" ~ 1,
    ke == "ribu" ~ 10^3,
    ke == "juta" ~ 10^6,
    ke == "miliar" ~ 10^9,
    ke == "triliun" ~ 10^12
  )
  pecahan <- pembilang/penyebut

  if (dari == "rupiah" & ke == "rupiah") {
    scales::dollar_format(prefix = "Rp", suffix = ",00", big.mark = ".", decimal.mark = ",")
  }
  else {
    scales::dollar_format(scale = pecahan, prefix = "Rp", suffix = paste0(" ", ke), big.mark = ".", decimal.mark = ",")
  }
}

skl_angka <- function(...) {
  scales::number_format(big.mark = ".", decimal.mark = ",")
}
