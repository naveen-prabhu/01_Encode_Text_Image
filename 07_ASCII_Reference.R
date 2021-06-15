
# PROJECT 02: ENCODE TEXT AS IMAGE
# F07: CREATE ASCII REFERENCE TABLE
# ============================================================================

f07_ascii_reference <- function() {
  if(!require(gtools)) {
    install.packages("gtools")
  }
  library(gtools)
  
  df_ref_ascii <- NULL
  val_vector <- sample(1:1000, 798, replace = FALSE)
  
  x <- 1
  for(i in 0:255) {
    val_ascii <- i
    val_chr <- chr(i)
    
    val_r <- val_vector[x] / 1000
    val_g <- val_vector[x+1] / 1000
    val_b <- val_vector[x+2] / 1000
    
    cb_row <- cbind(val_ascii, val_chr, val_r, val_g, val_b)
    df_ref_ascii <- as.data.frame(rbind(df_ref_ascii, cb_row))
    
    x <- x+3
  }
  
  colnames(df_ref_ascii) <- c("val_ascii", "val_chr", "val_R", "val_G", "val_B")
  return(df_ref_ascii)
}

# ----------------------------------------------------------------------------
# df_ref_ascii <- f07_ascii_reference()
# rm(f07_ascii_reference)
