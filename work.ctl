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
#    Home: /home/users/snguyen/control/unix_control
#########################
tdelay : 20
cd : /home/users/snguyen/test

#Run bashshell:
cd : /home/users/snguyen/test/genvec
#runbash : 1_gen.sh
#cd : /home/users/snguyen/test/tmsim/src
#uploadgit : /home/users/snguyen/test/tmsim/src/pvt.lst_testmode
#cp : /home/users/snguyen/control/unix_control/pvt.lst_testmode
cd : /home/users/snguyen/test/

#### Example modify a file in local:
# send sed -i:
#findpath : $PWD /home/users/snguyen/test/tube/ > tubelist
#uploadgit : /home/users/snguyen/test/tubelist
#sedi : 's/limit ++ 5/limit ++ 6/g' /home/users/snguyen/test/tube/PROG_FT_VCG_REFACC/job.cfg
#sedi : 's/sleep ++ 60/sleep ++ 300/g' /home/users/snguyen/test/tube/PROG_FT_VCG_REFACC/job.cfg

#Run python script:
#cd : /home/users/snguyen/test/tube/PROG_FT_VCG_REFACC/
#python : /home/users/snguyen/Desktop/skill/python/Submitjob.py
#findpath : $PWD /home/users/snguyen/test/tube/PROG_FT_VCG_REFACC/output/ > PROG_FT_VCG_REFACC
#uploadgit : /home/users/snguyen/test/PROG_FT_VCG_REFACC
#uploadgit : /home/users/snguyen/test/tube/PROG_FT_VCG_REFACC/output/TT_1.10_3.0_25_1.225_011110/TT_1.10_3.0_25_1.225_011110.measure
#findpath : $PWD /home/users/snguyen/test/tube/PROG2_FT_VSL/output/ > PROG2_FT_VSL
#uploadgit : /home/users/snguyen/test/PROG2_FT_VSL
#uploadgit : /home/users/snguyen/test/tube/PROG2_FT_VSL/output/TT_1.10_3.0_25_1.225_11111/TT_1.10_3.0_25_1.225_11111.measure

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


