classdef avltreeNode < handle
    properties
        value;
        leftnode; 
        rightnode; 
        height; % height of tree
    end % end properties
    methods
        function obj = avltreeNode(value)
            obj.height = 1;
            obj.value = value; % first assign node value.
        end
    end % end methods
end % end class