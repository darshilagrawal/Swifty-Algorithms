class Stack{
    var values: [Int]
    
    init(values:[Int]) {
        self.values = values
    }
    func push(val:Int){
        values.append(val)
    }
    
    func pop() -> Int{
        if values.count == 0{
            return -1
        }else{
        let val = values.last
        values.removeLast()
            return val!
            
        }
    }
    
    func peek() -> Int{
        if values.count == 0{
         return -1
        }else{
        let val = values.last
        return val!
        }}
}

var stack = Stack(values: [])
stack.push(val: 1)
stack.push(val: 2)
stack.push(val: 3)
stack.peek()
stack.pop()
stack.pop()
stack.pop()
stack.pop()
