@echo on
@echo =============================================================
@echo $                                                           $
@echo $          Nepxion Thunder Stock Client Standalone          $
@echo $                                                           $
@echo $                                                           $
@echo $                                                           $
@echo $  Nepxion Studio All Right Reserved                        $
@echo $  Copyright (C) 2017-2050                                  $
@echo $                                                           $
@echo =============================================================
@echo.
@echo off

@title 股票客户端(单机版)
@color 0a

@set CLASSPATH=./conf/;./lib/*
@set PATH=

call:JAVA_HOME_CHECK

:JAVA_HOME_CHECK
if "%JAVA_HOME%"=="" goto ECHO_JAVA_HOME_CHECK_QUIT

@rem echo Found Java Home=%JAVA_HOME%
echo JAVA_HOME=%JAVA_HOME%
goto SET_CLASSPATH_AND_RUN

:ECHO_JAVA_HOME_CHECK_QUIT
@rem echo Please set JAVA_HOME
echo 请设置JAVA_HOME
goto QUIT

:SET_CLASSPATH_AND_RUN
"%JAVA_HOME%\bin\java" -Dfile.encoding=GBK -Ddefault.client.encoding=GBK -Duser.language=zh -Duser.region=CN -Djava.security.policy=java.policy -Djava.library.path=%PATH% -Xms128m -Xmx512m -classpath %CLASSPATH% com.nepxion.thunder.stock.client.StockClientStandalone

:QUIT

pause