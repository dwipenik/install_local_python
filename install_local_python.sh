#!/bin/bash

mkdir $HOME/python
cd $HOME/python

# Install python 2.7.14
wget https://www.python.org/ftp/python/2.7.14/Python-2.7.14.tgz
tar zxf Python-2.7.14.tgz
find $HOME/python/Python-2.7.14 -type d | xargs chmod 0755

# Install python 3.6.3
wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
tar zxf Python-3.6.3.tgz
find $HOME/python/Python-3.6.3 -type d | xargs chmod 0755

pushd Python-2.7.14
./configure --prefix=$HOME/python
make
make install
popd

pushd Python-3.6.3
./configure --prefix=$HOME/python
make
make install
popd

echo "######################################"
echo "Python local installations finished."
echo "To use python 2.7, enter the following command:"
echo "  export PATH=\$HOME/python/Python-2.7.14:\$PATH"
echo "To use python 3.6, enter the following command:"
echo "  export PATH=\$HOME/python/Python-3.6.3:\$PATH"
