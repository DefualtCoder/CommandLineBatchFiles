# CommandLineBatchFiles
This is a repository for batch files to be used with c++ command line operations.

# How to use:
1. Copy the batch files to the source directory where your projects will go i.e. ```C:\cpp\```

2. Open command prompt cmd.exe and navigate to your source directory.

3. Type <b>createproject</b> and press enter. You will be prompted for a project name. This will create a project directory, and will open up either notepad.exe or notepad++.exe if installed with a pre-configured main.cpp file. This will also make a copy of build.bat, createclass.bat, execute.bat, and clean.bat inside the project directory.

4. The command prompt will then be in the directory of the project. This is where you have a few options. 
      - **A.** You can type <b>build</b> once your done with editing your main.cpp for your project. This will build and execute your project in a separate command window. This will also link multiple cpp files for all your classes.
      - **B.** You can type <b>createclass</b> which you will be prompted for a class name. This will create a pre-configured .cpp and .h files for your class of your classname.

5. **clean.bat** -> deletes the ```main.exe``` file from your project directory. Just type <b>clean</b> and press enter while in the project directory.

### **Warning:** 
#### Do not run the ```execute.bat``` by itself as this will close the current open cmd window. 
