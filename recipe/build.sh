# Temporarily fix stuff with the GH ostrich repo.
# (1) Replace "g++" by $(CXX) in the Makefile
sed -i  -E 's/g\+\+/\$\(CXX\)/' make/makefile
# (2) Add missing header
sed -i  -E '/#include "MyHeaderInc.h"/a #include <iostream>' include/FileList.h

# Compile
cd make
make GCC

# Install
mkdir -p $PREFIX/bin/
cp ./Ostrich $PREFIX/bin/ostrich
