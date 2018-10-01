
//        10
//      /   \
//     5     14
//    /     /  \
//   1     11   20



class Node {
  let value: Int
  let leftNode: Node?
  let rightNode: Node?
  
  init(value: Int, leftNode: Node?, rightNode: Node?) {
    self.value = value
    self.leftNode = leftNode
    self.rightNode = rightNode
  }
}


// Left Branch
let oneNode = Node(value: 1, leftNode: nil, rightNode: nil)
let fiveNode = Node(value: 5, leftNode: oneNode, rightNode: nil)

// Right Branch
let tenNode = Node(value: 10, leftNode: <#T##Node?#>, rightNode: <#T##Node?#>)


