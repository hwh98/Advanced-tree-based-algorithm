classdef binarysearchtree < handle
    properties
        root % (binaryTreeNode) root node of this binary tree
        valuearr % the value to 
    end % end properties
    methods
        function obj = binarysearchtree(X) % constructor
            obj.valuearr = X;
            obj.root = binaryTreeNode(X(1)); % initiate the tree with first element in array. 
        end % end function 

        function obj = add(obj) % add the element of X into the tree. 
            % the input obj is the (binarytree) class object
            
            for i = 2:length(obj.valuearr) % index = 1 is for root node
                obj.addrecursive(obj.root, obj.valuearr(i)); % insert a node in BST
            end %end for
        end  % end function 

        function node = addrecursive(obj, node, value) 
            % addrecusive travel through the node to get a empty place for
            % the value
            % if the node is smaller than node(current), we go to leftnode by passing the
            % leftnode. if the node is bigger than node(current), e go to
            % the rightnode.
            if isempty(node) % true if the node is empty then create node and return
                node = binaryTreeNode(value);
            else % the node(current) is not empty so traverse the tree
                if value < node.value
                    node.leftnode = obj.addrecursive(node.leftnode, value); % the site is taken passon the current node object with the value.
                elseif value > node.value
                    node.rightnode = obj.addrecursive(node.rightnode, value);
                end % end if 
            end % end if 
        end % end function 

        function found = search(obj, value)
            found = obj.searchrecursive(obj.root, value) ;
        end

        function found = searchrecursive(obj, node, value)
            %containrecursive check if the value of node(current) equal to
            %value. 
            %if the node is empty return false cause the traverse reach end
            %and found no match. 
            %if the node match return true;
            %if value < node.value(current) then traverse to the leftnode,
            %otherwise traverse to rightnode.
            %@return found : boolean whether we found the value in tree.
            if isempty(node) == 1 % reach the end of tree.
                %fprintf("not found");
                found = false;
                return;
            end
            %fprintf("resurvice node value : %d \n ", node.value);
            if value == node.value % found the value return true
                %fprintf("found");
                found = true;
                return;
            end
            if value < node.value % the value is smaller then node(current), then go to the rightnode
                %fprintf("-left-");
                found = obj.searchrecursive(node.leftnode, value);
                return;
            end
            %fprintf("-right-");
            found = obj.searchrecursive(node.rightnode, value);
        end % end function 
    end % end methods
end