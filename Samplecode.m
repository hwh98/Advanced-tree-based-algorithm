addpath("Tree_class");
%% binary search tree (BST) 
fprintf("--- Binary Search tree ---\n")
bstobj = binarysearchtree([2 3 1 7 4]);
bstobj.add();
% search
fprintf("searching 3 in BST: %d\n", bstobj.search(3));
fprintf("searching 2 in BST: %d\n", bstobj.search(2));


%% avl tree
fprintf("--- Creating AVL tree ---\n")
avlobj = avltree([10 20 30 40 50 25]);
avlobj.insert();
fprintf("search 10 in avl: %d\n",avlobj.search(10))
fprintf("search 252 in avl: %d\n",avlobj.search(252))
fprintf("search 25 in avl: %d\n",avlobj.search(25))

%%  red-black tree
fprintf("--- Red-Black tree ---\n")
rbobj = redblacktree([26 20 15 11 33 35 41 49 25 24 23 27 28 29 30 31]);
rbobj.arrInsertRBT;
fprintf("Search 292 in Red-Black tree: %d\n", rbobj.search(292))
fprintf("Search 41 in Red-Black tree: %d\n", rbobj.search(41))


