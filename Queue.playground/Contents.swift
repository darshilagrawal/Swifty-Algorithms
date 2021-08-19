class Queue{
    var values: [Int]
    
    func enqueue(val:Int){
        values.append(val)
    }
    
    func dequeue()->Int{
        if values.count == 0{
            return -1
        }else{
            return values.removeFirst()
        }
    }
    init(values:[Int]){
        self.values = values
    }
}

var queue=Queue(values: [])
queue.enqueue(val: 2)
queue.enqueue(val: 4)
queue.dequeue()
queue.dequeue()
queue.dequeue()
