
class Node{
    let value:Int
    var left:Node?
    var right:Node?
    
    init(value:Int,left:Node?,right:Node?){
        self.value = value
        self.right = right
        self.left = left
    }
}
var leafRight = Node(value: 5, left: nil, right: nil)
var leafLeft = Node(value: 4, left: nil, right: nil)
var rightChild = Node(value: 3, left: nil, right: nil)
var leftChild = Node(value: 2, left: leafLeft, right: leafRight)
var root = Node(value: 1, left: leftChild, right: rightChild)

func preOrderTreeTraversal(head:Node?){
    let curr = head
    if curr == nil{
        return
    }
    print(curr?.value)
    preOrderTreeTraversal(head: curr?.left)
    preOrderTreeTraversal(head: curr?.right)
    
}
 preOrderTreeTraversal(head: root)
