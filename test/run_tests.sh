ASRUN=/home/aster/aster/bin/as_run
TEST_DIR=/home/aster/test

mkdir $TEST_DIR
cd $TEST_DIR
$ASRUN --stdout=out --stderr=err --list --all --output=testcases >> screen

for testcase in `cat testcases`
do
    $ASRUN --stdout=out --stderr=err --test $testcase $TEST_DIR >> screen
done

$ASRUN --stderr=err --diag --only_nook --astest_dir=$TEST_DIR
