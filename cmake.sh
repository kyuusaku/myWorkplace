#install cmake
wget http://www.cmake.org/files/v3.0/cmake-3.0.2.tar.gz -P `pwd`/tmp/
cd `pwd`/tmp/
tar -xf cmake-3.0.2.tar.gz
cd cmake-3.0.2
./configure
make
make install
cd ../..
ln -s /usr/local/bin/cmake /usr/bin/cmake
