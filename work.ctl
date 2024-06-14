#
tdelay : 20
cd : /home/users/snguyen/test
#Test 1: 
#ls : /home/users/snguyen/test/tube > tubelist
#uploadgit : /home/users/snguyen/test/tubelist
#rm : /home/users/snguyen/control/unix_control/tubelist
findpath : $PWD /home/users/snguyen/test/tube/ > tubelist
uploadgit : /home/users/snguyen/test/tubelist
echo : I'm here!

ls : /home/users/snguyen/test > list2
cd : /home/users/snguyen/control
#rm : /home/users/snguyen/test/list2
uploadgit : /home/users/snguyen/test/list2
cd : /home/users/snguyen/control
rm : /home/users/snguyen/control/unix_control/list
rm : /home/users/snguyen/control/unix_control/list1
# run a vnc job:
#cd : /simdir2/***/***/testmode/temp/run_spectre/***/
#runcsh: TT_1.10_3.00_25_1.225.run
#cd : /home/users/snguyen/control


