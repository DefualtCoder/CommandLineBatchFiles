# CommandLineBatchFiles
This is a repository for batch files to be used with **C++** command line operations. This uses the ```-std=c++17 -Wall -pedantic``` compiler flags.

# How to use:
1. Copy the batch files to the source directory where your projects will go i.e. ```C:\cpp\```

2. Open command prompt cmd.exe and navigate to your source directory.

3. Type <b>createproject</b> and press enter. You will be prompted for a project name. This will create a project directory, and will open up either notepad.exe or notepad++.exe if installed with a pre-configured main.cpp file. This will also make a copy of build.bat, createclass.bat, execute.bat, and clean.bat inside the project directory.

4. The command prompt will then be in the directory of the project. This is where you have a few options. 
      - **A.** You can type <b>build</b> once your done with editing your main.cpp for your project. This will build and execute your project in a separate command window. This will also link multiple cpp files for all your classes.
      - **B.** You can type <b>createclass</b> which you will be prompted for a class name. This will create a pre-configured .cpp and .h files for your class of your classname.

5. **clean.bat** -> deletes the ```main.exe``` file from your project directory. Just type <b>clean</b> and press enter while in the project directory.

6. If you are using a different text editor than notepad++, you can make some small edits to use with your text editor:
           
      -**A.** In the **createproject.bat** on line 32 we can change:

      `IF EXIST "C:\Program Files\notepad++\notepad++.exe" (notepad++ %CD%\%folderName%\main.cpp) ELSE (notepad %CD%\!folderName!\main.cpp)`
            
      TO:
          
      `IF EXIST "path\to\yourtexteditor.exe" (yourtexteditor %CD%\%folderName%\main.cpp) ELSE (notepad %CD%\!folderName!\main.cpp)`
           
      -**B.** In the **createclass.bat** we would need to change lines 32 and 51 from:
      
      `IF EXIST "C:\Program Files\notepad++\notepad++.exe" (notepad++ %CD%\%folderName%\main.cpp) ELSE (notepad %CD%\!folderName!\main.cpp)`
            
      TO:
          
      `IF EXIST "path\to\yourtexteditor.exe" (yourtexteditor %CD%\%folderName%\main.cpp) ELSE (notepad %CD%\!folderName!\main.cpp)`


### **Warning:** 
#### Do not run the ```execute.bat``` by itself as this will close the current open cmd window. 

            
