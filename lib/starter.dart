import 'binary_search_tree.dart';

void main() {
  final tree = BinarySearchTree<int>();
  var i;
  for (var i = 0; i < 15; i++) {
    tree.insert(i);
  }

  print(tree);
}
