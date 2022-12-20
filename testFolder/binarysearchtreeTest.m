classdef binarysearchtreeTest < matlab.unittest.TestCase
    properties
       X = [2 3 1 7]; % test array % non duplicate number array

    end % end properties

    methods(Test)
        function testConstructor(testCase)
            bst = binarysearchtree(testCase.X);
            testCase.verifyEqual(length(bst.valuearr), length(testCase.X), 'input wasnt assign correctly') 
            testCase.verifyEqual(bst.root.value, testCase.X(1), 'the root node value is wrong')
        end % end function
        
        function testaddrecrusive(testCase)
            bst = binarysearchtree(testCase.X);
            bst = bst.add();
            testCase.verifyEqual(bst.root.rightnode.value, testCase.X(2), 'node 3 is wrong'); 
            testCase.verifyEqual(bst.root.leftnode.value, testCase.X(3), 'node 1 is wrong'); 
        end
        function testsearch(testCase)
            bst = binarysearchtree(testCase.X);
            bst = bst.add();
            testCase.verifyEqual(bst.search(7), true, 'node 7 suppose to be searched - rightcheck prob');
            testCase.verifyEqual(bst.search(1), true, 'node 1 suppose to be searched - leftcheck prob'); 
            testCase.verifyEqual(bst.search(11), false, 'Node 11 shouldnt be searched in BST'); 
        end
        
    end % end methods
end 