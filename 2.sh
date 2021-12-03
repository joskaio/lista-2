a=$1
b=$2
c=$3

ls $* >> ok.log
ls $* 2>> erro.log
