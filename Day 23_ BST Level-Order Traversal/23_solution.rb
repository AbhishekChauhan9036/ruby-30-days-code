class Node
    attr_accessor :left,:right,:data
  def initialize data
      @left=@right=nil
      @data=data
    end
end
class Solution
    def insert (root,data)
        if root==nil
            return Node.new(data)
        else
            if data<=root.data
                cur=self.insert(root.left,data)
                root.left=cur
            else
                cur=self.insert(root.right,data)
                root.right=cur
            end
        end
        return root
    end
    
    # first draft solution
    # def levelOrder(root)
    # queue = [root]
    #     while queue != 0
    #         current = queue[0]
    #         queue = queue[-1] # only return the first
    #         print current.data.to_s
    #     end
    #         [levelOrder(root.left), levelOrder(root.right)] if root.nil?
    # end

    def levelOrder(root)
        if root != nil
          queue = [root]
        else
          queue = []
        end
        while queue != []
            node = queue.pop
            print "#{node.data} "
            if node.left != nil
                queue.insert(0,node.left)
            end
            if node.right != nil
            queue.insert(0,node.right)
            end
        end
    end
end

myTree=Solution.new
root=nil
T=gets.to_i
for i in 1..T
    data=gets.to_i
    root=myTree.insert(root,data)
end
myTree.levelOrder(root)
