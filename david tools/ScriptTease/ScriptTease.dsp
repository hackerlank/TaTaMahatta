# Microsoft Developer Studio Project File - Name="ScriptTease" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=ScriptTease - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ScriptTease.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ScriptTease.mak" CFG="ScriptTease - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ScriptTease - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "ScriptTease - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/", aaaaaaaa"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ScriptTease - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "ScriptTease - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "ScriptTease - Win32 Release"
# Name "ScriptTease - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Group "config file loader"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\cfg.cpp
# End Source File
# End Group
# Begin Group "script tease"

# PROP Default_Filter ""
# Begin Group "basic variables"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\script_var_file.cpp
# End Source File
# Begin Source File

SOURCE=.\script_var_float.cpp
# End Source File
# Begin Source File

SOURCE=.\script_var_int.cpp
# End Source File
# Begin Source File

SOURCE=.\script_var_string.cpp
# End Source File
# End Group
# Begin Group "basic functions"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\script_func_file.cpp
# End Source File
# Begin Source File

SOURCE=.\script_func_float.cpp
# End Source File
# Begin Source File

SOURCE=.\script_func_integer.cpp
# End Source File
# Begin Source File

SOURCE=.\script_func_string.cpp
# End Source File
# End Group
# Begin Source File

SOURCE=.\script.cpp
# End Source File
# Begin Source File

SOURCE=.\script_basics.cpp
# End Source File
# Begin Source File

SOURCE=.\script_condition.cpp
# End Source File
# Begin Source File

SOURCE=.\script_function.cpp
# End Source File
# Begin Source File

SOURCE=.\script_line.cpp
# End Source File
# Begin Source File

SOURCE=.\script_param.cpp
# End Source File
# Begin Source File

SOURCE=.\script_parse.cpp
# End Source File
# Begin Source File

SOURCE=.\script_variable.cpp
# End Source File
# Begin Source File

SOURCE=.\scriptTease.cpp
# End Source File
# End Group
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\cfg.h
# End Source File
# Begin Source File

SOURCE=.\cfg_i.h
# End Source File
# Begin Source File

SOURCE=.\script.h
# End Source File
# Begin Source File

SOURCE=.\script_basics.h
# End Source File
# Begin Source File

SOURCE=.\script_condition.h
# End Source File
# Begin Source File

SOURCE=.\script_function.h
# End Source File
# Begin Source File

SOURCE=.\script_i.h
# End Source File
# Begin Source File

SOURCE=.\script_line.h
# End Source File
# Begin Source File

SOURCE=.\script_param.h
# End Source File
# Begin Source File

SOURCE=.\script_parse.h
# End Source File
# Begin Source File

SOURCE=.\script_variable.h
# End Source File
# End Group
# End Target
# End Project
