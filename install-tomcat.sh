echo 'on'
echo '============================================================='
echo '$                                                           $'
echo '$                      Nepxion Thunder                      $'
echo '$                                                           $'
echo '$                                                           $'
echo '$                                                           $'
echo '$  Nepxion Studio All Right Reserved                        $'
echo '$  Copyright (C) 2017-2050                                  $'
echo '$                                                           $'
echo '============================================================='
echo '.'
echo 'off'

title=Nepxion Thunder
color=0a

PROJECT_NAME=thunder-test

if [ ! -d ${PROJECT_NAME}/target];then
rmdir /s/q ${PROJECT_NAME}/target
fi

# 执行相关模块的Maven Install
mvn clean install -DskipTests -pl ${PROJECT_NAME} -am