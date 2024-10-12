import 'binary_search_tree.dart';

extension Subtree<E> on BinarySearchTree {
  bool containsSubtree(BinarySearchTree subtree) {
    Set set = <E>{};
    root?.traverseInOrder((value) {
      set.add(value);
    });
    var isEqual = true;
    subtree.root?.traverseInOrder((value) {
      isEqual = isEqual && set.contains(value);
    });
    return isEqual;
  }
}
