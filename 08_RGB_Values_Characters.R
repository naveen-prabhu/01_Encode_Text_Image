
# PROJECT 02: ENCODE TEXT AS IMAGE
# F08: CONVERT SHUFFLE CHARACTER MATRIX TO RGB VECTOR
# ============================================================================

f08_rgb_values <- function(mat_SWM, df_ref_ascii) {
  N <- nrow(mat_SWM)
  NN <- N * N
  
  vec_RGB <- matrix(0, nrow = NN, ncol = 4)
  x <- 1
  
  for(i in 1:N) {
    for(j in 1:N) {
      val_char <- mat_SWM[i, j]
      val_R <- 0
      val_G <- 0
      val_B <- 0
      
      for(k in 1:nrow(df_ref_ascii)) {
        val_chk <- as.character(df_ref_ascii[k, 2])
        if(val_char == val_chk) {
          val_R <- df_ref_ascii[k, 3]
          val_G <- df_ref_ascii[k, 4]
          val_B <- df_ref_ascii[k, 5]
          break
        }
      }
      
      vec_RGB[x, 1] <- val_char
      vec_RGB[x, 2] <- val_R
      vec_RGB[x, 3] <- val_G
      vec_RGB[x, 4] <- val_B
      
      x <- x + 1
    }
  }
  
  return(vec_RGB)
}

# ----------------------------------------------------------------------------
# vec_RGB <- f08_rgb_values(mat_SWM, df_ref_ascii)
# rm(f08_rgb_values)
