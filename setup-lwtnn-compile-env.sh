setupATLAS
# localSetupGcc gcc492_x86_64_slc6
localSetupROOT
localSetupSFT releases/LCG_84/eigen/3.2.7
localSetupBoost boost-1.60.0-python2.7-x86_64-slc6-gcc49
EIGEN_INC=$SFT_HOME_eigen/include/eigen3
BOOST_INC=$ALRB_BOOST_ROOT/include
export CPLUS_INCLUDE_PATH=$EIGEN_INC:$BOOST_INC
