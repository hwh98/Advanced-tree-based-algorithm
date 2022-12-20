# Advanced-tree-based-data-structure
A Matlab implementation and comparison of three tree based algorithms, binary search tree, AVL tree, and Red-Black tree with unit test.

## Binary search tree (BST)
Binary search tree is a binary tree with the following properties
* The node is always greater than all the node in the left subtree.
* The one is always smaller than all the node in the right subtree.
* All the subtree should also be a binary search.

The time complexity of the binary search tree is proportional to the height of the tree. As a result, the higher the tree is the longer it will take to execute the operations. However, if you insert a sorted array into the BST, the tree will go down one level everytime the new element is added and the height grows drastically. Note that in this case the BST will keep adding the node in one subtree, which lead to an unbalanced tree, and it has the worst-case performance as we didn't take advantage of the feature of BST.

## AVL tree
AVL tree is a self-balancing binary search tree.  AVL tree keeps track of the balance factor, which is the difference between the height of left and right subtree to make sure the BST is balanced. The rebalancing techqniue will be executed once the balance factor is more than 1 to restore this property. In each insertion, the AVL tree will check if the balance factor is bigger than 1, if so, then perform left or right rotation on the first unbalanced node as you travel up. There are four cases to handle for deletion and insertion to remain balanced, including right, left, left-right, and right-left rotation. Compared to Red-Black tree, the AVL tree is able to keep the tree more balanced.

## Red-Black tree 
Red-Black tree is also one of the self-balancing binary search tree, and it is oftenly compared to AVL tree. Each node has an extra bit to store the color of the node either red or black, and the color is the key factor that keep the tree approximately balanced during insertaion. Since the BST operations take $O(h)$ time where h is the height of the tree, the Red-Black is able to balance the tree and make sure the height of the tree remains $O(logn(n))$ to avoid skewed ubalanced tree.
The color of red-black follow the criteria
* The root node is always black 
* All leave are blacks, including the XXX. 
* If a node is red, then both its children are black.
* Each path from a given node to any of its descendent NULL node contain the same number of black nodes.

During the insertion and deletetion, there are many special cases we need to take care of, but the document will become tedious if I include them all. You can go check the refrence website for more details.

### AVL tree versus Red-Black tree.
For searching heavy operation, AVL is faster than Red-Black tree because AVL tree requires more rotations to keep the tree well balanced, which is why the AVL tree might takes longer to insert and delete. As a result, if the application require more insertion and deletion than searching, then the Red-Black tree would be a better option; otherwise, the AVL tree will win over Red-Black tree for its performace in the element search task.

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

## Running instruction
You can run the ```Samplecode.m``` file to see the results of  theree different tree based algorithms.
The unit test code is located in the ```testRunnder.m```, and after you run, the latest unit test will be updated in ```testFolder```.


Reference: 
1. [AVL tree](https://www.tutorialspoint.com/data_structures_algorithms/avl_tree_algorithm.htm)
2. [Insertion in AVL tree](https://www.geeksforgeeks.org/insertion-in-an-avl-tree/)
3. [Introduction to Red-Black tree](https://www.geeksforgeeks.org/introduction-to-red-black-tree/)
4. [Red-Black tree visualization](https://www.cs.usfca.edu/~galles/visualization/RedBlack.html). You can build your own Red-Black tree with this website.
5. [Red-Black tree special cases explanation](https://algorithmtutor.com/Data-Structures/Tree/Red-Black-Trees/)
