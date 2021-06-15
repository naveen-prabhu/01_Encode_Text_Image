
# PROJECT 02: ENCODE TEXT AS IMAGE
# F03: REPLACE REFERENCE
# ============================================================================

f03_replace_reference <- function() {
  if(!require(gtools)) {
    install.packages("gtools")
  }
  library(gtools)
  
  df_ref_replace <- NULL
  
  # REPLACE NUMBERS
  x <- 1
  val_vector <- sample(48:57, 10, replace = FALSE)
  for(i in 48:57) {
    val_ascii <- i
    val_chr <- chr(i)
    
    new_ascii <- val_vector[x]
    new_chr <- chr(new_ascii)
    
    cb_row <- cbind(val_ascii, val_chr, new_ascii, new_chr)
    df_ref_replace <- as.data.frame(rbind(df_ref_replace, cb_row))
    
    x <- x+1
  }
  
  # REPLACE UPPER CASE ALPHABETS
  x <- 1
  val_vector <- sample(65:90, 26, replace = FALSE)
  for(i in 65:90) {
    val_ascii <- i
    val_chr <- chr(i)
    
    new_ascii <- val_vector[x]
    new_chr <- chr(new_ascii)
    
    cb_row <- cbind(val_ascii, val_chr, new_ascii, new_chr)
    df_ref_replace <- as.data.frame(rbind(df_ref_replace, cb_row))
    
    x <- x+1
  }
  
  # REPLACE LOWER CASE ALPHABETS
  x <- 1
  val_vector <- sample(97:122, 26, replace = FALSE)
  for(i in 97:122) {
    val_ascii <- i
    val_chr <- chr(i)
    
    new_ascii <- val_vector[x]
    new_chr <- chr(new_ascii)
    
    cb_row <- cbind(val_ascii, val_chr, new_ascii, new_chr)
    df_ref_replace <- as.data.frame(rbind(df_ref_replace, cb_row))
    
    x <- x+1
  }
  
  colnames(df_ref_replace) <- c("val_ascii", "val_chr", "new_ascii", "new_chr")
  return(df_ref_replace)
}

# ----------------------------------------------------------------------------
# df_ref_replace <- f03_replace_reference()
# rm(f03_replace_reference)
