class Node

    attr_accessor :data,:next

  def initialize data
        @data = data
        @next = nil
    end
end

class Solution

    def removeDuplicates(head)
      #write your code here  
      node = head
        while node.next
            if node.data == node.next.data
                node.next = node.next.next
            else
                node = node.next
            end
        end

    return head
    end

    def insert(head,value)
        p=Node.new(value)
        if head==nil
             head=p
         elsif head.next==nil
             head.next=p
         else  
             current = head
         while current.next != nil
             current = current.next
       end 
       current.next = p
      end
      return head   
   end 	

	def display(head)
       current = head
       while current 
          print current.data," "
          current = current.next
       end
   end
end
       
mylist= Solution.new
head=nil
T=gets.to_i
for i in 1..T
    data=gets.to_i
    head=mylist.insert(head,data)
end
head=mylist.removeDuplicates(head)
mylist.display(head)