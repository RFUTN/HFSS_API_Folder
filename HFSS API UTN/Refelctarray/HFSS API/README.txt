HFSS-MATLAB-SCRIPTING-API
=========================

Introdution
-----------

HFSS-MATLAB-API is a library toolbox to control Ansoft HFSS from MATLAB using 
the HFSS Scripting Interface. This tool provides a set of MATLAB functions to 
create 3D objects in HFSS by generating the required HFSS Scripts. Basically, 
anything that can be done in HFSS user interface and the 3D Modeler can be 
done with this library of functions. Once a script is generated in this 
manner, it can be run in HFSS to generate the 3D model, solve it and export 
the data. You create your entire design in MATLAB and basically use HFSS to 
solve it.

Folder structure:

1. Locate the Matlab folder (where you store the matlab scripts)
2. Create the "HFSS_API_Folder" in your Matlab folder
3. Copy the content of the folder "HFSS API" (downloaded from the repository) in your "HFSS_API_Folder"
4. Create a foder "My Project" to store your project files

The final folder structure should be obtained.

Matlab folder 
	--> HFSS_API_Folder
	---------> HFSS API
	---------------> 3dmodeler
	---------------> analysis
			...
	---------------> My Projects

Files:
------
All the files are organized in the following directories.

3dmodeler/ - contains m-files that generate VBScripts for the 3D-Modeler.
analysis/ - contains m-files for Analysis (Setup/Solve/Export).
boundary/ - contains m-files for setting up boundaries.
doc/ - contains the HTML documentation.
examples/ - contains example usage m-files.
general/ - contains files for operations such as File Open/Save/Close, and 
           Project Create/Save/Make Active etc.,
contrib/ - contains files contributed by several users. Please refer to the 
           individual files to know more about them.

For questions and comments, please contact me.

Author:
-------
Vijay Ramasami,
RSL, Univ. of Kansas,
Lawrence, KS, 66046.
E-Mail: rvijayc@gmail.com, rvc@ieee.org


Modified by Luigi Boccia
Vers_1_0
June 2019
