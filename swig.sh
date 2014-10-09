#install swig
#require lib:pcre-devel
#date:2014-9-30

wget http://sourceforge.net/projects/swig/files/swig/swig-3.0.2/swig-3.0.2.tar.gz -P `pwd`/tmp/
cd `pwd`/tmp/
tar -xf swig-3.0.2.tar.gz
cd swig-3.0.2
./configure --prefix=/usr/local/
make
make install
cd ../..
