import 'binary_node.dart';
import 'binary_search_tree.dart';

bool treesEqual(BinarySearchTree first, BinarySearchTree second) {
  return _isEqual(first.root, second.root);
}

bool _isEqual(BinaryNode? first, BinaryNode? second) {
  if (first == null || second == null) {
    return first == null && second == null;
  }
  return first.value == second.value &&
      _isEqual(first.leftChild, second.leftChild) &&
      _isEqual(first.rightChild, second.rightChild);
}
