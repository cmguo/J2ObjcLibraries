#/bin/bash

MODULES="$*"
if [ -z $MODULES ]
then
  MODULES="androidx.txt gson.txt okio.txt okhttp.txt reactivestreams.txt rxjava.txt retrofit.txt"
fi


mkdir -p ../classes
for i in $MODULES
do
  ${J2OBJC_HOME}/tools/j2objc.sh -arc -d .. -cp jsr305-3.0.0.jar -cp ${PWD}/../classes --prefixes prefixes.txt --dead-code-report deadcode.txt --external-annotation-file annotation.jaif -g @$i
done

FIX_INCLUDE_NO_SOURCE=true ${J2OBJC_HOME}/tools/fix_include.sh ../objc ${J2OBJC_HOME}/frameworks/JRE.framework
