classdef avltree < handle 
    properties
        root;
        valuearr; % value array waited to be isnert
    end % end properties

    methods 
        function obj = avltree(X)
            obj.valuearr = X;
        end % function end

        function obj = insert(obj)
            for i = 1:length(obj.valuearr)
                obj.root = obj.insertrecursive(obj.root, obj.valuearr(i));
            end % end for 
        end % end function

        function node = insertrecursive(obj, node, value)
            % recursive function to insert key in subtree rotted with node 
            % @para node : (avltreeNode) class object, start from the root node
            % @para value : (int) the integer value we want to insert.
            %1. perform normal binary search tree
            if isempty(node) % true if the node is empty then create node and return
                node = avltreeNode(value);
            else % the node(current) is not empty so traverse the tree
                if value < node.value
                    node.leftnode = obj.insertrecursive(node.leftnode, value); % the site is taken passon the current node object with the value.
                elseif value > node.value
                    node.rightnode = obj.insertrecursive(node.rightnode, value);
                end % end if 
            end % end if 

            %2. update the height of the ancestor tree.
            node.height = 1 + max(obj.getheight(node.leftnode), obj.getheight(node.rightnode));
            
            %3. get the balance factor 
            balance = obj.getbalance(node);
            
            % Make the tree balanced
            %case1 : left left case
            if(balance > 1 && value < node.leftnode.value)
                node = obj.rightrotate(node);
                return;
            end % end if
            % cas2 : right right case
            if(balance < -1 && value > node.rightnode.value)
                node = obj.leftrotate(node);
                return;
            end % end if

            %case3:left right case
            if(balance > 1 && value > node.leftnode.value)
                node.leftnode = obj.leftrotate(node.leftnode);
                node = obj.rightrotate(node);
                return;
            end %end if
            if (balance < -1 && value < node.rightnode.value)
                node.rightnode = obj.rightrotate(node.rightnode);
                node = obj.leftrotate(node);
                return;
            end % end if
            return;
        end % end function 

        function obj = rightrotate(obj, nodey)
            %the right rotatetion 
            % para : (avltreeNode) class object, the node we want to start
            % rotate.
            %@obj : the updated new node after right rotation.
            x = nodey.leftnode;
            t2 = x.rightnode;

            % perform rotation
            x.rightnode = nodey;
            nodey.leftnode = t2;
            %update height
            nodey.height = max(obj.getheight(nodey.leftnode), obj.getheight(nodey.rightnode)) + 1;
            x.height = max(obj.getheight(x.leftnode), obj.getheight(x.rightnode)) + 1;
            obj = x;% update and return new root
            return; 
        end %end function 

        function obj = leftrotate(obj, nodex)
            % the left roatation. 
            %@para : (avltreeNode) class object, the node we want to start
            % rotate.
            %@obj : the updated new node after left rotation.
            y = nodex.rightnode;
            t2 = y.leftnode;

            % perform rotation
            y.leftnode = nodex;
            nodex.rightnode = t2;
            %update height
            nodex.height = max(obj.getheight(nodex.leftnode), obj.getheight(nodex.rightnode)) + 1;
            y.height = max(obj.getheight(y.leftnode), obj.getheight(y.rightnode)) + 1;
            obj = y; % update and return new root
            return;
        end % end function 

        function bfactor = getbalance(obj, node)
            % the balance factor of node N.
            % @para: (avltreeNode) indicate the node where we start count
            % the balance.
            % @return bfactor: (integer) indicate the balance factor
            if isempty(node)
                bfactor = 0;
                return;
            end % end if
            bfactor = obj.getheight(node.leftnode) - obj.getheight(node.rightnode);
            return;
        end % end function 

        function h = getheight(obj, node)
            % this return the height of the tree count from that node.
            % @para node : (avltreeNode) class object indicate which node's
            % height we want
            % @return h: (integer)indicate the height of the tree or subtree. 
            if isempty(node)
                h = 0;
                return;
            end % end if-else
            h = node.height;
            return;
        end % end function 

        function found = search(obj, value)
            % wether we found the value
            % @return found : (boolean) whether we found the value in tree.
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
            if isempty(node) == 1 % reach the end of tree.
                %fprintf("not found");
                found = false;
                return;
            end
            if value == node.value % found the value return true
                found = true;
                return;
            end
            if value < node.value % the value is smaller then node(current), then go to the rightnode
                found = obj.searchrecursive(node.leftnode, value);
                return;
            end
            found = obj.searchrecursive(node.rightnode, value);
        end % end function 
    end % end methods
end % end class