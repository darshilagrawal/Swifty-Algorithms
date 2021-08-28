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
}

let list = MyLinkList()
list.checkEmpty()
