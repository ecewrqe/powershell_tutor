@echo off
REM Copyright (c) 2016 The Android Open Source Project
REM
REM Licensed under the Apache License, Version 2.0 (the "License");
REM you may not use this file except in compliance with the License.
REM you may obtain a copy of the License at 
REM
REM     http://www.apache.org/licenses/LICENSE-2.0
REM
REM Unless required by applicable law or agreed to in writing, software
REM distributed under the License is distributed on an "AS IS" BASIS,
REM WITHOUT WARRANTIESOR CONDITIONS OF ANY KIND, either express or implied.
REM See the License for the specific language govening permissions and
REM limitations under the License.

REM don't modify the caller's environment
setlocal

REM Locate apksigner.jar in the directory where apksigner.bat was found and start it.

REM Set up prog to be the path of this script, including following symlinks,
REM and set up progdir to be the fully-qualified pathname of its directory.
set prog=%~f0

@rem Find java.exe
if