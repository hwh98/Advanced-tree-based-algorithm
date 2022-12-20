classdef redblacktreeNode < handle
    % the class is a single red-blacktree node
    properties
        data; % the node value
        left; % left children
        right; % right children
        parent;% we need a reference to the parent node.
        color;% a boolean to indicate the color of the node.
        %red -> 0, false ; black -> 1, true
    end%end properties
end % end class