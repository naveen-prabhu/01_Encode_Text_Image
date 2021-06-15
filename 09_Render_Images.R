
# PROJECT 02: ENCODE TEXT AS IMAGE
# F09: RENDER IMAGE
# ============================================================================

f09_render_plot <- function(mat_SWM, vec_RGB, file_path) {
  if(!require(gtools)) {
    install.packages("plotrix")
  }
  library(plotrix)
  
  N = nrow(mat_SWM)
  grid <- matrix(0, nrow = N, ncol = N)
  vec_RGB <- vec_RGB[, -1]
  
  # PLOT GREYSCALE IMAGE
  jpeg(paste(file_path, "01_Image_Greyscale.jpeg", sep = ""), width = 1920, height = 1080)
  color2D.matplot(grid, cellcolors = grey(vec_RGB), axes = FALSE, xlab = " ", ylab = " ")
  dev.off()
  
  # PLOT COLOR IMAGE
  jpeg(paste(file_path, "02_Image_Color.jpeg", sep = ""), width = 1920, height = 1080)
  color2D.matplot(grid, cellcolors = rgb(vec_RGB), axes = FALSE, xlab = " ", ylab = " ")
  dev.off()
  
  print("Files created.")
  print(paste("File path: ", file_path))
  print("01_Image_Greyscale.jpeg")
  print("02_Image_Color.jpeg")
}

# ----------------------------------------------------------------------------
# file_path <- "C:\\Users\\NAVEEN\\Pictures\\TEXT_IMG_Messages\\05_EXP_04_Jun_06_2021\\"
# f09_render_plot(mat_SWM, vec_RGB, file_path)
# rm(f09_render_plot, file_path)
