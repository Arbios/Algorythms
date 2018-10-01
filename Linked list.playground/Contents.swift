struct LinkedList<T> {
  var head: LinkedListNode<T>
  init(head: LinkedListNode<T>) {
    self.head = head
  }
}

indirect enum LinkedListNode<T> {
  case value(element: T, next: LinkedListNode<T>)
  case end
}


let element4 = LinkedListNode.value(element: "D", next: .end)
let element3 = LinkedListNode.value(element: "C", next: element4)
let element2 = LinkedListNode.value(element: "B", next: element3)
let element1 = LinkedListNode.value(element: "A", next: element2)
let list = LinkedList(head: element1)


extension LinkedList: Sequence {
  func makeIterator() -> LinkedListIterator<T> {
    return LinkedListIterator(current: head)
  }
}

struct LinkedListIterator<T>: IteratorProtocol {
  var current: LinkedListNode<T>
  
  mutating func next() -> T? {
    switch current {
    case let .value(element, next):
      current = next
      return element
    case .end: return nil
    }
  }
}

list.contains("R")

for element in list {
  print(element)
}
