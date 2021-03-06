all: t2.c
	gcc t2.c btree_search.c btree_insertion.c btree_create.c -o t2

run: all
	./t2

valgrind: all
	valgrind ./t2

valgrindFull: all
	valgrind --leak-check=full --show-leak-kinds=all ./tbt
