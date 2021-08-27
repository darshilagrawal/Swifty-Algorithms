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
}

let list = MyLinkList()
list.checkEmpty()
