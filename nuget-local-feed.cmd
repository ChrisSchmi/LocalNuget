@echo off
echo Update Nuget
nuget update -self

REM set repo and nupkg spurce directory
Set repodir=C:\NugetLocalRepository
Set sourcedir=C:\NugetLocalSource

Echo Deleting all files from %dir%
del %dir%\* /F /Q

REM taken from: http://stackoverflow.com/questions/1965787/how-to-delete-files-subfolders-in-a-specific-directory-at-command-prompt-in-wind
Echo Deleting all folders from %repodir%
for /d %%p in (%repodir%\*) Do rd /Q /S "%%p"
echo Folder deleted

echo Init Local Repository
nuget init %sourcedir% %repodir%