#!/bin/bash

find androidx -name "*.h" -exec echo \#include \"{}\" \; > androidx.h
find com/google/gson -name "*.h" -exec echo \#include \"{}\" \; > gson.h
find io/reactivex/rxjava3 -name "*.h" -exec echo \#include \"{}\" \; > rxjava.h
find javax -name "*.h" -exec echo \#include \"{}\" \; > javax.h
find okhttp3 -name "*.h" -exec echo \#include \"{}\" \; > okhttp.h
find okio -name "*.h" -exec echo \#include \"{}\" \; > okio.h
find org/reactivestreams -name "*.h" -exec echo \#include \"{}\" \; > reactive-streams.h
find retrofit2 -name "*.h" -exec echo \#include \"{}\" \; > retrofit.h
