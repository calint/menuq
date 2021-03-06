CC="gcc -std=c11"
BIN=menuq
SRC=src/menuq.c
#OPTS=-Os
WARNINGS="-Wall -Wextra"
LIBS=-lX11

echo &&
$CC  -o $BIN  $SRC $LIBS $OPTS $WARNINGS && 
echo    "             lines   words  chars" &&
echo -n "   source:" &&
cat $SRC|wc
echo -n "wc zipped:" &&
cat $SRC|gzip|wc &&
echo && ls -o --color $BIN &&
echo &&
#valgrind --leak-check=yes --leak-check=full --show-leak-kinds=all ./$BIN
#valgrind --leak-check=yes --leak-check=full ./$BIN
#valgrind --leak-check=yes ./$BIN
echo -n
