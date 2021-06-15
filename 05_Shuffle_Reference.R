
# PROJECT 02: ENCODE TEXT AS IMAGE
# F05: SHUFFLE REFERENCE
# ============================================================================

f05_shuffle_reference <- function(mat_RWM) {
  N <- nrow(mat_RWM)
  NN <- N * N
  
  # CREATE OLD FRAME
  r_ind <- 1
  c_ind <- 1
  
  df_old <- NULL
  for(i in 1:NN) {
    old_N <- i
    if(c_ind <= N) {
      cb_row <- cbind(old_N, r_ind, c_ind)
      c_ind <- c_ind + 1
    }
    else {
      r_ind <- r_ind + 1
      c_ind <- 1
      cb_row <- cbind(old_N, r_ind, c_ind)
      c_ind <- c_ind + 1
    }
    
    df_old <- as.data.frame(rbind(df_old, cb_row))
  }
  colnames(df_old) <- c("old_N", "old_Row", "old_Col")
  
  # CREATE NEW FRAME
  vec_new_N <- sample(1:NN, NN, replace = FALSE)
  df_new <- NULL
  for(i in 1:NN) {
    new_N <- vec_new_N[i]
    r_ind <- df_old[new_N, 2]
    c_ind <- df_old[new_N, 3]
    
    cb_row <- cbind(new_N, r_ind, c_ind)
    df_new <- as.data.frame(rbind(df_new, cb_row))
  }
  colnames(df_new) <- c("new_N", "new_Row", "new_Col")
  
  # MERGE OLD AND NEW FRAMES
  df_ref_shuffle <- as.data.frame(cbind(df_old, df_new))
  return(df_ref_shuffle)
}

# ----------------------------------------------------------------------------
# df_ref_shuffle <- f05_shuffle_reference(mat_RWM)
# rm(f05_shuffle_reference)
