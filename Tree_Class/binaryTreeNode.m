classdef binaryTreeNode < handle
    properties
        value 
        leftnode
        rightnode
    end % end properties
    methods
        function obj = binaryTreeNode(value)
            obj.value = value;
        end % end function 
    end % end methods
end