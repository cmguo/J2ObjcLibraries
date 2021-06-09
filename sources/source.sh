#/bin/bash

mkdir -p ../classes
for i in androidx.txt gson.txt okio.txt okhttp.txt reactivestreams.txt rxjava.txt retrofit.txt
do
  ${J2OBJC_HOME}/tools/j2objc.sh -arc -d .. -cp ${PWD}/../classes --prefixes prefixes.txt --dead-code-report deadcode.txt --external-annotation-file annotation.jaif -g @$i
done

FIX_INCLUDE_NO_SOURCE=true ${J2OBJC_HOME}/tools/fix_include.sh ../objc ${J2OBJC_HOME}/frameworks/JRE.framework
