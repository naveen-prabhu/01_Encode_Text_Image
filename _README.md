# 01_Encode_Text_Image
- @author: Naveen Prabhu.
- @projectDate: Jun 07, 2021.
- @projectVersion: 2.0.

- Project to convert text (or "Message") into images for the purpose of creating NFTs. 
- A proprietary algorithm is used for this conversion process. 

# Run the program 
  01) Download the code repository on your machine
  02) Open the file called "_Main_Execution.R"
  03) L08: Update variable "code_path" with location of downloaded code repository
  04) L53: Update variable "file_path" with location of the output folder (desired)
  05) L54: Update variable "inputs_MSG" with the "Message" that you wish to encode
  06) Save and execute the entire .R file



# This proprietary algorithm has the following steps:
# 01) Find "N"
  - The image will be created using grids where nrows = ncols [ = N ]
  - The default minimum value of [ N ] is set as 10, which can be updated
  - The step identifies the minimum viable value of [ N ] which can be used to store the "Message"
 
# 02) Create word matrix
  - The "Message" will be tokenized into word and character vectors
  - The character vectors will then be place into the [ N ] grid structure
  - Each character from the "Message" will be mapped to one unit in the grid, starting with grid number 01
  - The assignment of characters to grid units will be in sequential order i.e., left to right and top to bottom
  
# 03) Replace reference
  - [ core ] First step of encoding / encryption
  - A reference table will be created to replace character from the original "Message" with other characters
  - Reference characters (or alternate characters) for each of the below mentioned characters will be created
    - Numerical characters (ASCII values from 48 to 57)
    - Upper case characters (ASCII values from 65 to 90)
    - Lower case characters (ASCII values from 97 to 122)
      
# 04) Replace characters
  - [ core ] Second step of encoding / encryption 
  - Output from step-02 --> "original matrix" or "OM"
  - Output from step-03 --> "replace word matrix" or "RWM"
  - The algorithm will go cell by cell in the OM and replace original characters with reference characters from the RWM
  - In cases where there are no reference characters / values, the original characters will be retained

# 05) Shuffle reference
  - [ core ] Third step of encoding / encryption
  - A reference table will be created to reassign cells within the matrix
  - For example, cell [2, 2] can / will be moved to cell [4, 8]
  - A seperate mapping table will be created to document the position of the movevment of these cells
    - Old position 
    - New position

# 06) Shuffle characters
  - [ core ] Fourth step of encoding / encryption
  - Output from step-04 --> "replace word matrix" or "RWM"
  - Output from step-05 --> "shuffle word matrix" or "SWM"
  - The algorithm will go cell by cell in the RWM and reposition them based on the new co-ordinate values in the SWM
  - Every cell in the RWM will have a new co-ordiante value in the SWM

# 07) ASCII reference
  - [ core ] Fifth step of encoding / encryption
  - A reference table will be created to replace characters with RBG values 
  - For example the character [ C ] will have a reference RGB vector [ 180, 133, 125 ]
  - RGB reference table will be created for every character with ASCII values from "0" to "255"
      
# 08) ASCII characters
  - [ core ] Sixth step of encoding / encryption
  - Output from step-06 --> "shuffle word matrix" or "SWM"
  - Output from step-07 --> "ascii reference matrix" or "ref_ASCII"
  - The algorithm will unlist the SWM into a single column matrix
  - The algorithm will add three additional columns to each row in the unlisted matrix 
  - The algorithm will update the values in these additional columns using "ref_ASCII"
  - The unlisted matrix will have nrow = N * N
      
# 09) Create plot
  - The final unlisted matrix will be plotted in a 2D plane
  - The plot will be in the shape of a square matrix with "N" rows and "N" columns
  - The assignment of values from the unlisted matrix will be left to right and then top to down 
  - The RGB values for each character / row in the unlisted matrix will be used to define the color of the grid unit in the plot
  - This new matrix of RGB values will be plotted to a file (and not on the screen)
  - Two types of plots / files will be created:
    - Greyscale plot or "01_Image_Greyscale.jpeg"
    - Color plot or "02_Image_Color.jpeg"
  - The file outputs will be created in the location defined by the variable "file_path"
  - Note: Follow these steps to create on-screen plots instead of output plots:
    - Open file named "09_Render_Images.R"
    - L17: Comment the line and prevent execution
    - L19: Comment the line and prevent execution
    - L22: Comment the line and prevent execution
    - L24: Comment the line and prevent execution
    - L27: Comment the line and prevent execution
    - L28: Comment the line and prevent execution
    - L29: Comment the line and prevent execution

# 10) Export data
  - Supporting tables / matrices will be exported as "__" seperated text files
  - These tables will be required in order to decode / decrypt the image back to the original "Message"
  - The following list of tables / files will be created:
    - Original "Message" -- "03_Input_MSG.txt"
    - Output from step-02 -- "04_Character_Word_Matrix.txt"
    - Output from step-03 -- "05_Reference_Repalce.txt"
    - Output from step-04 -- "06_Replace_Word_Matrix.txt"
    - Output from step-05 -- "07_Reference_Shuffle.txt"
    - Output from step-06 -- "08_Shuffle_Word_Matrix.txt"
    - Output from step-07 -- "09_Reference_ASCII.txt"
    - Output from step-08 -- "10_RGB_Vector.txt"
  - Outputs from step-09 i.e., the two plots (greyscale and color) have already been created 
  - The tables / files from this step, will also be created in the same location, as defined by the variable "file_path"


# Contact details
- For additional details / queries, please drop me a note at "oneplusone.naveen@gmail.com".
- Subject line: "GitHub | 01_Encode_Text_Image | Discussion".
