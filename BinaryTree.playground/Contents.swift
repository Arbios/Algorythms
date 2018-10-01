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
//        10
//      /   \
//     5     14
//    /     /  \
//   1     11   20


// Left Branch
let oneNode = Node(value: 1, leftNode: nil, rightNode: nil)
let fiveNode = Node(value: 5, leftNode: oneNode, rightNode: nil)

// Right Branch
let twenteen = Node(value: 20, leftNode: nil, rightNode: nil)
let eleven = Node(value: 11, leftNode: nil, rightNode: nil)
let fourteen = Node(value: 14, leftNode: eleven, rightNode: twenteen)

// Branch Head
let tenNode = Node(value: 10, leftNode: fiveNode, rightNode: fourteen)

func search(node: Node?, value: Int) -> Bool {
  if node == nil {
    return false
  }

  if node?.value == value {
    return true
  } else if value < node!.value {
    return search(node: node?.leftNode, value: value)
  } else {
    return search(node: node?.rightNode, value: value)
  }
//  if node?.value == value {
//    return true
//  } else {
//    return search(node: node?.leftNode, value: value) || search(node: node?.rightNode, value: value)
//  }
  
}
search(node: tenNode, value: 11)


// Линейный поиск
let array = [1, 5, 10, 11, 14, 20]
array.index(where: {$0 == 20})
