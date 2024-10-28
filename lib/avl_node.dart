class AvlNode<T> {
  AvlNode(this.value);
  int height = 0;
  T value;
  AvlNode<T>? leftChild;
  AvlNode<T>? rightChild;

  int get balanceFactor => leftHeight - rightHeight;

  int get leftHeight => leftChild?.height ?? -1;

  int get rightHeight => rightChild?.height ?? -1;
}
