
# PROJECT 02: ENCODE TEXT AS IMAGE
# F11: MAIN EXECUTION FUNCTION
# ============================================================================

f11_main_execute <- function(input_MSG, file_path) {
  # Define "code_path"
  code_path <- " [ Update location of the folder with these codes (without the sq. brackets) ] "
  
  # 01. Find N
  source(paste(code_path, "01_Find_N.R", sep = ""))
  N <- f01_find_N(input_MSG, 50)
  
  # 02. Create word matrix
  source(paste(code_path, "02_Create_Word_Matrix.R", sep = ""))
  mat_CWM <- f02_word_matrix(input_MSG, N)
  
  # 03. Replace reference
  source(paste(code_path, "03_Replace_Reference.R", sep = ""))
  df_ref_replace <- f03_replace_reference()
  
  # 04. Replace characters
  source(paste(code_path, "04_Replace_Characters.R", sep = ""))
  mat_RWM <- f04_replace_characters(mat_CWM, df_ref_replace)
  
  # 05. Shuffle reference
  source(paste(code_path, "05_Shuffle_Reference.R", sep = ""))
  df_ref_shuffle <- f05_shuffle_reference(mat_RWM)
  
  # 06. Shuffle characters
  source(paste(code_path, "06_Shuffle_Characters.R", sep = ""))
  mat_SWM <- f06_shuffle_characters(mat_RWM, df_ref_shuffle)
  
  # 07. ASCII reference
  source(paste(code_path, "07_ASCII_Reference.R", sep = ""))
  df_ref_ascii <- f07_ascii_reference()
  
  # 08. Convert characters to RBG
  source(paste(code_path, "08_RGB_Values_Characters.R", sep = ""))
  vec_RGB <- f08_rgb_values(mat_SWM, df_ref_ascii)
  
  # 09. Create plot
  source(paste(code_path, "09_Render_Images.R", sep = ""))
  f09_render_plot(mat_SWM, vec_RGB, file_path)
  
  # 10. Export
  source(paste(code_path, "10_Export_Files.R", sep = ""))
  f10_export_files(file_path, f1 = input_MSG, f2 = mat_CWM, f3 = df_ref_replace, f4 = mat_RWM, 
                   f5 = df_ref_shuffle, f6 = mat_SWM, f7 = df_ref_ascii, f8 = vec_RGB)
}

# ----------------------------------------------------------------------------
file_path <- " [ Update location of folder for output plots and files (without the sq. brackets) ] "
input_MSG <- " [ Update text message that needs to be encoded / encrypted (without the sq. brackets) ] "

# RUN THE MAIN FUNCTION 
f11_main_execute(input_MSG, file_path)
