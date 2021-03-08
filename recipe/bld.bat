mkdir build
cd build

cmake ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_INCLUDE_PATH:PATH="%LIBRARY_INC%" ^
      ..
if errorlevel 1 exit 1
make install
if errorlevel 1 exit 1
