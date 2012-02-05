call config.bat
Tools\cvs checkout -r %1 %cvsModuleName%
Tools\xcopy %cvsModuleName% "%checkoutPath%%1" /s/e/h/i
rmdir /s /q %cvsModuleName%
Tools\7zip\7z.exe a -tzip "%checkoutPath%%1.zip" "%checkoutPath%%1" -r -mx5