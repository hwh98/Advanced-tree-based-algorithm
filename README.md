# Advanced-tree-based-algorithm
A Matlab implementation and comparison of three tree based algorithms, binary search tree, AVL tree, and Red-Black tree.

## Binary search tree (BST)
Binary search tree is a binary tree with the following properties
* The node is always greater than all the node in the left subtree.
* The one is always smaller than all the node in the right subtree.
* All the subtree should also be a binary search.

The time complexity of the binary search tree is proportional to the height of the tree. As a result, the higher the tree is the longer it will take to execute the operations. However, if you insert a sorted array into the BST, the tree will go down one level everytime the new element is added and the height grows drastically. Note that in this case the BST will keep adding the node in one subtree, which lead to an unbalanced tree, and it has the worst case time complexity as we didn't take advantage of the feature of BST.

## AVL tree
AVL tree is a self-balancing binary search tere.

## Time and space computational complexity comparison.
The time and space computational complexity of binary search tree, AVL tree, and Red-black tree. It handled the unbalanced binary search tree 

The insertion operation copmarison.
Algorithm | Time complexity | Space computational complexity
--- | --- | --- |
Binary search tree | $O(n)$ | $O(n)$|
AVL tree |  $O(log(n))$ | $O(n)$ |
Red-black tree | $O(log(n))$ | $O(n)$ |

The searching operation comparison.
Algorithm | Time complexity | Space computational complexity
--- | --- | --- |
Binary search tree | $O(n)$ | $O(n)$|
AVL tree |  $O(log(n))$ | $O(n)$ |
Red-black tree | $O(log(n))$ | $O(n)$ |
