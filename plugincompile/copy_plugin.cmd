:: %1 workspaceFolder             C:\qsys_plugins\pluginOneDrive\Documents
:: %2 workspaceFolderBasename     plugin

:: Resolve the real Documents folder (it may be redirected, e.g. to OneDrive or a VM shared folder)
for /f "usebackq delims=" %%D in (`powershell -NoProfile -Command "[Environment]::GetFolderPath('MyDocuments')"`) do set "DOCS_DIR=%%D"
if not defined DOCS_DIR set "DOCS_DIR=%userprofile%\Documents"

set "PLUGIN_DIR=%DOCS_DIR%\QSC\Q-Sys Designer\Plugins\%2"

if not exist "%PLUGIN_DIR%" mkdir "%PLUGIN_DIR%"

:: This line writes/overwrites any existing file without locking it
::      This introduced errors where on a file changed notification, TYPE wasn't finished, and QSD would see a partial script and
::      throw an error. It would recover on the subsequent file changed notifications when the file was completely written.
:: TYPE "C:\plugins-layout-test\%1\%1.qplug" > "%userprofile%\OneDrive\Documents\QSC\Q-Sys Designer\Plugins\%1\%1.qplug"

:: As a solution, this line was added to write/overwrite files and lock them so that QSD couldn't access them until it was finished.
::      QSD was then throwing an access error while the file was being written, so I added code in C# to catch access denied errors,
::      in favour of waiting for the next changed notification that allowed the file to be read (i.e. file copying finished)
COPY /Y "%1\%2.qplug" "%PLUGIN_DIR%\%2.qplug"