# Usage:
# + tdelay: set delay time for the loop
# + GENERAL COMMAND: <command> : <Argument>
# + Example: cd : /home/users/snguyen/test 
# + SPECIAL COMMAND: uploadgit, runcsh, findpath, ...
# + uploadgit: upload file fom local to git repo
# + runcsh: will run a cshell file. (Example: "runcsh: TT_1.10_3.00_25_1.225.run")
# + findpath: like "ls" but will list the content with full path
#    Example: "findpath : $PWD /home/users/snguyen/test/tube/ > content.list" --> List the content of dir "tube" to content.list file
#    with full path. Easy to control.
#########################
tdelay : 20
cd : /home/users/snguyen/test

#### Example modify a file in local:
# send sed -i:
findpath : $PWD /home/users/snguyen/test/tube/ > tubelist
uploadgit : /home/users/snguyen/test/tubelist
# 1. Load file to git repo.

# 2. Modify the content on git repo. Wait more than tdelay time for the local update

# 3. Control Copy 

#Test 1: 
#ls : /home/users/snguyen/test/tube > tubelist
#uploadgit : /home/users/snguyen/test/tubelist
#rm : /home/users/snguyen/control/unix_control/tubelist
#findpath : $PWD /home/users/snguyen/test/tube/ > tubelist
#uploadgit : /home/users/snguyen/test/tubelist

#echo : Debug tube...
#ls: /home/users/snguyen/test/tube/PROG2_FT_VSL/output > prog
#uploadgit : prog
#ls : /home/users/snguyen/test/tube/PROG2_FT_VSL/output/TT_1.10_3.0_25_1.225_00000 > dirout
#uploadgit : dirout

#uploadgit : /home/users/snguyen/test/tube/PROG2_FT_VSL/output/TT_1.10_3.0_25_1.225_00000/TT_1.10_3.0_25_1.225_00000.measure

cd : /home/users/snguyen/control
#rm : /home/users/snguyen/test/list2
#uploadgit : /home/users/snguyen/test/list2
#cd : /home/users/snguyen/control
#rm : /home/users/snguyen/control/unix_control/list

# run a vnc job:
#cd : /simdir2/***/***/testmode/temp/run_spectre/***/
#runcsh: TT_1.10_3.00_25_1.225.run
#cd : /home/users/snguyen/control


