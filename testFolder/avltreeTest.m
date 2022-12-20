classdef avltreeTest < matlab.unittest.TestCase
    properties 
        X = [10 30 50 70 90 40 9 13 8 45];
    end %end properties
    methods(Test)
        function testConstructor(testCase)
           avl = avltree(testCase.X);
           testCase.verifyEqual(length(avl.valuearr), length(testCase.X), 'input wasnt assign correctly')
        end % end function

        function testinsert(testCase)
            avl = avltree(testCase.X);
            avl.insert();
            testCase.verifyEqual(avl.root.value, 30, 'root was wrong');
            testCase.verifyEqual(avl.root.leftnode.leftnode.value, 9, 'node 9 is wrong');
            testCase.verifyEqual(isempty(avl.root.leftnode.rightnode.leftnode), true, 'node 13 shouldnt have leftnode');
            testCase.verifyEqual(avl.root.rightnode.leftnode.rightnode.value, 45, 'node 45 is wrong');
            testCase.verifyEqual(avl.root.rightnode.rightnode.rightnode.value, 90, 'node 90 is wrong');
        end % end function
        function testgetbalance(testCase)
            avl = avltree([20 10 30]);
            avl.insert();
            testCase.verifyEqual(avl.getbalance(avl.root.leftnode.leftnode), 0, 'this should be balance');
        end % end function
        function testsearch(testCase)
            avl = avltree(testCase.X);
            avl.insert();
            testCase.verifyEqual(avl.search(8), true, "8 should be found");
            testCase.verifyEqual(avl.search(18), false, "There is no 18");
        end % end function
    end %end methods
end % end classdef 