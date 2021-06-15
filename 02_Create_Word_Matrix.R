
# PROJECT 02: ENCODE TEXT AS IMAGE
# F02: CREATE WORD MATRIX
# ============================================================================

f02_word_matrix <- function(input_MSG, N) {
  if(!require(gtools)) {
    install.packages("gtools")
  }
  library(gtools)
  
  chr_array <- unlist(strsplit(input_MSG, ""))
  chr_len <- as.numeric(length(chr_array))
  
  char_LC <- chr(sample(65:90, 26, replace = FALSE))
  char_UC <- chr(sample(97:122, 26, replace = FALSE))
  char_set <- c(char_UC, char_UC, chr(32), chr(46))
  
  val_dummy <- sample(char_set, N*N, replace = TRUE)
  mat_CWM <- matrix(val_dummy, nrow = N, ncol = N)
  
  r_ind <- 1
  c_ind <- 1
  for(i in 1:chr_len) {
    val_chr <- chr_array[i]
    
    if(c_ind <= N) {
      mat_CWM[r_ind, c_ind] <- val_chr
      c_ind <- c_ind + 1
    }
    else {
      r_ind <- r_ind + 1
      c_ind <- 1
      mat_CWM[r_ind, c_ind] <- val_chr
      c_ind <- c_ind + 1
    }
  }
  
  return(mat_CWM)
}

# ----------------------------------------------------------------------------
# input_MSG <- "Test message for this protocol."
# mat_CWM <- f02_word_matrix(input_MSG, 10)
# rm(f02_word_matrix)
