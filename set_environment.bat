set root=%cd%

set include=%include%;%root%\kermit\k95;
set include=%include%;%root%\openssl\0.9.7\inc32;
set include=%include%;%root%\srp\include;
set include=%include%;%root%\pwsdk\inc32;
set include=%include%;%root%\kerberos\kfw-2.2-beta-2\athena\wshelper\include;
set include=%include%;%root%\superlat\include;
set include=%include%;%root%\kerberos\kfw-2.2-beta-2\athena\auth\krb5\src\include;
set include=%include%;%root%\kermit\k95\kui;
set include=%include%;%root%\zinc\include;

set lib=%lib%;%root%\kerberos\kfw-2.2-beta-2\target\lib\i386\rel;
set lib=%lib%;%root%\zinc\lib\mvcpp500

rem "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\VC\Auxiliary\Build\vcvars32.bat"

