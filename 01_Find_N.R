
# PROJECT 02: ENCODE TEXT AS IMAGE
# F01: IDENTIFY VALUE OF "N"
# ============================================================================

f01_find_N <- function(input_MSG, min_N = 10) {
  chr_array <- unlist(strsplit(input_MSG, ""))
  chr_len <- as.numeric(length(chr_array))
  
  N <- min_N
  flag <- TRUE
  while(flag == TRUE) {
    val_chk <- N*N
    if(val_chk >= chr_len) {
      flag <- FALSE
      break
    }
    else {
      N <- N + 1
    }
  }
  
  return(N)
}

# ----------------------------------------------------------------------------
# input_MSG <- "Test message for this protocol."
# N <- f01_find_N(input_MSG, 10)
# rm(f01_find_N)
