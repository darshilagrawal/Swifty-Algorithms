class LinkList{
    let value:Int
    var prev:LinkList?
    var next:LinkList?
    
    init(value:Int) {
        self.value = value
    }
}

class MyLinkList{
    var head:LinkList?
    
    func checkEmpty() -> Bool{
        if head?.next == nil{
            return true
        }else{
            return false
        }
    }
    var last:LinkList?{
        guard var node = head else {
            return nil
        }
        
        while let next = node.next {
            node = next
        }
        return node
    }
    
    func append(val:Int){
        let newNode = LinkList(value: val)
        if let lastNode = last{
            lastNode.next = newNode
            newNode.prev = lastNode
        }else{
            head = newNode
        }
        
    }
    public var count: Int {
        guard var node = head else {
            return 0
        }
        var count = 1
        while let next = node.next {
            node = next
            count = count + 1
        }
        return count
    }
    
    func find(val:Int)->Bool{
        guard var node = head else{
            return false
        }
        while let next = node.next{
            
            if node.value == val{
                return true
            }
            node = next
        }
        return false
    }
    
}

let list = MyLinkList()
list.checkEmpty()
list.append(val: 3)
list.append(val: 5)
list.append(val: 10)
print(list.count)
list.find(val: 3)
list.find(val: 56)
