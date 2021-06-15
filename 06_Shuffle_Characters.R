
# PROJECT 02: ENCODE TEXT AS IMAGE
# F06: SHUFFLE CHARACTERS
# ============================================================================

f06_shuffle_characters <- function(mat_RWM, df_ref_shuffle) {
  N <- nrow(mat_RWM)
  mat_SWM <- matrix("", nrow = N, ncol = N)
  
  x <- 1
  for(i in 1:N) {
    for(j in 1:N) {
      r_ind <- df_ref_shuffle[x, 5]
      c_ind <- df_ref_shuffle[x, 6]
      mat_SWM[i, j] <- mat_RWM[r_ind, c_ind]
      x <- x + 1
    }
  }
  
  return(mat_SWM)
}

# ----------------------------------------------------------------------------
# mat_SWM <- f06_shuffle_characters(mat_RWM, df_ref_shuffle)
# rm(f06_shuffle_characters)
