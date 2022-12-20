classdef redblacktreeTest < matlab.unittest.TestCase
    properties
       X = [26 20 15 11 33 35 41 49 25 24 23 27 28 29 30 31]; % test array % non duplicate number array
    end % end properties

    methods(Test)
        function testConstructor(testCase) % test constructor
            rbt = redblacktree(testCase.X);
            testCase.verifyEqual(length(rbt.valuearr), length(testCase.X), 'input array wasnt assign correctly')
            testCase.verifyEqual(rbt.TNULL.color, 0,'TNULL node color is wrong');
        end % end function

        function testinsertion(testCase)
            rbt = redblacktree(testCase.X);
            rbt.arrInsertRBT;
            testCase.verifyEqual(rbt.root.data, 25, 'root node data wrong');
            testCase.verifyEqual(rbt.root.color, 0, 'root node color wrong');
            testCase.verifyEqual(rbt.root.left.left.data, 15, 'node(15) data wrong');
            testCase.verifyEqual(rbt.root.left.left.color, 0, 'node(15) color wrong');
            testCase.verifyEqual(rbt.root.right.right.right.left.data, 35, 'node(35) data wrong');
            testCase.verifyEqual(rbt.root.right.right.right.left.color, 1, 'node(35) color wrong');
        end
        function testsearch(testCase)
            rbt = redblacktree(testCase.X);
            rbt.arrInsertRBT;
            testCase.verifyEqual(rbt.search(31), true, 'node 31 suppose to be in red black tree');
            testCase.verifyEqual(rbt.search(100), false, 'Node 100 shouldnt be searched in red black tree');
        end % end function
    end % end methods
end 