mkdir build
cd build

cmake -G Ninja ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DBUILD_SHARED_LIBS=OFF ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_INCLUDE_PATH:PATH="%LIBRARY_INC%" ^
      ..
if errorlevel 1 exit 1
ninja -j 1
ninja install
if errorlevel 1 exit 1
