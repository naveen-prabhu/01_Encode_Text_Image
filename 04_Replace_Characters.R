
# PROJECT 02: ENCODE TEXT AS IMAGE
# F04: REPLACE CHARACTERS
# ============================================================================

f04_replace_characters <- function(mat_CWM, df_ref_replace) {
  N <- nrow(mat_CWM)
  mat_RWM <- matrix("", nrow = N, ncol = N)
  
  for(i in 1:N) {
    for(j in 1:N) {
      val_char <- mat_CWM[i, j]
      
      for(k in 1:nrow(df_ref_replace)) {
        test_val <- as.character(df_ref_replace[k, 2])
        if(val_char == test_val) {
          val_replace <- as.character(df_ref_replace[k, 4])
          break
        }
        else {
          val_replace <- val_char
        }
      }
      
      mat_RWM[i, j] <- val_replace
    }
  }
  
  return(mat_RWM)
}

# ----------------------------------------------------------------------------
# mat_RWM <- f04_replace_characters(mat_CWM, df_ref_replace)
# rm(f04_replace_characters)
