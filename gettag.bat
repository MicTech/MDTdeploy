CALL config.tools.bat
CALL config.cvs.bat
CALL config.bat
%cvsPath% checkout -r %1 %cvsModuleName%
%xcopyPath% %cvsModuleName% "%checkoutPath%%1" /s/e/h/i
rmdir /s /q %cvsModuleName%
%7zipPath% a -tzip "%checkoutPath%%1.zip" "%checkoutPath%%1" -r -mx5