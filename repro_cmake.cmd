del lib.h lib.cpp module.cpp

copy /y/b lib_initial.h lib.h
copy /y/b lib_initial.cpp lib.cpp
copy /y/b module_initial.cpp module.cpp

rmdir /q /s build

cmake -GNinja -Bbuild -DCMAKE_BUILD_TYPE=RelWithDebInfo
ninja -C build -v

copy /y/b lib_updated.h lib.h
copy /y/b lib_updated.cpp lib.cpp
copy /y/b module_updated.cpp module.cpp

copy /b lib.h +,,
copy /b lib.cpp +,,
copy /b module.cpp +,,

@REM cmake -GNinja -Bbuild --fresh  -DCMAKE_BUILD_TYPE=Release
sleep 1
ninja -C build -v -d explain
