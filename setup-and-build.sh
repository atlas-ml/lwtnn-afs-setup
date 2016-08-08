# script to setup and build lwtnn
HERE=$(dirname $BASH_SOURCE)
echo "setting up compilers for lwtnn.."
. ${HERE}/setup-compiler.sh
echo " --- cloning lwtnn --- "
if [[ ! -d lwtnn ]] ; then
    git clone https://github.com/dguest/lwtnn.git
    echo " --- compiling --- "
    (
        cd lwtnn
        make -j 4
    )
fi
echo " --- setting up virtualenv --- "
ACT_SCRIPT=$(readlink -e ${HERE}/../venv/lwtnn/bin/activate)
. $ACT_SCRIPT
echo " --- running tests --- "
./lwtnn/tests/test-ipmp.sh
echo " --- leaving virtualenv --- "
deactivate
echo "type \"${ACT_SCRIPT}\" to reenable"

# cleanup
unset ACT_SCRIPT HERE
