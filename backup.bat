CALL config.bat
REM Order and format of values in date and time depends on Locale settings
SET datestamp=%date:~-4,4%%date:~-10,2%%date:~-7,2%
SET hh=%time:~0,2%
IF "%hh:~0,1%" EQU " " SET hh=0%hh:~1,1%
SET mm=%time:~3,2%
IF "%mm:~0,1%" EQU " " SET mm=0%mm:~1,1%
SET ss=%time:~6,2%
IF "%ss:~0,1%" EQU " " SET ss=0%ss:~1,1%
SET timestamp=%hh%%mm%%ss%
SET datetimestamp=%datestamp%_%timestamp%
SET fullBackupPath=%backupPath%%backupPrefix%%datetimestamp%

Tools\xcopy.exe %worldPath% %fullBackupPath% /s/h/e/i
Tools\7zip\7z.exe a -tzip %fullBackupPath%.zip %fullBackupPath% -r -mx5