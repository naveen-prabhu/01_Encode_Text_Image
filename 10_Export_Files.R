
# PROJECT 02: ENCODE TEXT AS IMAGE
# F10: EXPORT SUPPORTING FILES
# ============================================================================

f10_export_files <- function(file_path, f1, f2, f3, f4, f5, f6, f7, f8) {
  write.table(f1, file = paste(file_path, "03_Input_MSG.txt", sep = ""), row.names = FALSE, col.names = FALSE)
  write.table(f2, file = paste(file_path, "04_Character_Word_Matrix.txt", sep = ""), sep = "___", row.names = FALSE, col.names = FALSE)
  
  write.table(f3, file = paste(file_path, "05_Reference_Repalce.txt", sep = ""), sep = "___", row.names = FALSE)
  write.table(f4, file = paste(file_path, "06_Replace_Word_Matrix.txt", sep = ""), sep = "___", row.names = FALSE, col.names = FALSE)
  
  write.table(f5, file = paste(file_path, "07_Reference_Shuffle.txt", sep = ""), sep = "___", row.names = FALSE)
  write.table(f6, file = paste(file_path, "08_Shuffle_Word_Matrix.txt", sep = ""), sep = "___", row.names = FALSE, col.names = FALSE)
  
  write.table(f7, file = paste(file_path, "09_Reference_ASCII.txt", sep = ""), sep = "___", row.names = FALSE)
  write.table(f8, file = paste(file_path, "10_RGB_Vector.txt", sep = ""), sep = "___", row.names = FALSE, col.names = FALSE)
  
  print("03_Input_MSG.txt")
  print("04_Character_Word_Matrix.txt")
  print("05_Reference_Repalce.txt")
  print("06_Replace_Word_Matrix.txt")
  print("07_Reference_Shuffle.txt")
  print("08_Shuffle_Word_Matrix.txt")
  print("09_Reference_ASCII.txt")
  print("10_RGB_Vector.txt")
}

# ----------------------------------------------------------------------------
# file_path <- " [ Update location of folder for output plots and files (without the sq. brackets) ] "
# f10_export_files(file_path, f1 = input_MSG, f2 = mat_CWM, f3 = df_ref_replace, f4 = mat_RWM, 
#                   f5 = df_ref_shuffle, f6 = mat_SWM, f7 = df_ref_ascii, f8 = vec_RGB)
# rm(f10_export_files, file_path)
