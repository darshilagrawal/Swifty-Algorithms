class Node{
    let value: Int
    var left: Node?
    var right: Node?
    
    init(value:Int,left:Node?,right:Node?) {
        self.value = value
        self.left = left
        self.right = right
    }
}
let rightLeafOfLeft = Node(value: 45, left: nil, right: nil)
let leftLeafOfLeft = Node(value: 30, left: nil, right: nil)
let rightLeafOfRight = Node(value: 65, left: nil, right: nil)
let leftLeafOfRight = Node(value: 55, left: nil, right: nil)
let rootRight = Node(value: 60, left: leftLeafOfRight, right: rightLeafOfRight)
let rootLeft = Node(value: 40, left: leftLeafOfLeft, right: rightLeafOfLeft)
let root = Node(value: 50, left: rootLeft, right: rootRight)

func binarySearch(searchValue:Int,head:Node?) -> Bool{
    
    let curr = head
    if curr == nil{
        return false
    }
    if curr?.value == searchValue{
        return true
    }
    if curr!.value > searchValue{
        return binarySearch(searchValue: searchValue, head: curr?.left)
    }
    if curr!.value < searchValue{
        return binarySearch(searchValue: searchValue, head: curr?.right)
    }
    return true
}

let result = binarySearch(searchValue: 50, head: root)
print(result)
print(binarySearch(searchValue: 30, head: root))
print(binarySearch(searchValue: 45, head: root))
