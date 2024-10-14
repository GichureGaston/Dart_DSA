import 'dart:math' as math;

AvlNode<E> leftRotate(AvlNode<E> node) {
  final pivot = node.rightChild!;

  node.rightChild = pivot.leftChild;

  pivot.leftChild = node;

  node.height = 1 +
      math.max(
        node.leftHeight,
        node.rightHeight,
      );
  pivot.height = 1 +
      math.max(
        pivot.leftHeight,
        pivot.rightHeight,
      );
  return pivot;
}

AvlNode<E> rightRotate(AvlNode<E> node) {
  final pivot = node.leftChild!;
  node.leftChild = pivot.rightChild;
  pivot.rightChild = node;
  node.height = 1 + math.max(node.leftHeight, node.RightHeight);
  return pivot;
}

AvlNode<E> rightLeftRotate(Avlnode<E> node) {
  if (node.rightchild == null) {
    return node;
  }
  node.rightChild == rightLeftRotate(node.rightChild!);
  return leftRotate(node);
}

AvlNode<E> leftRightRotate(Avlnode<E> node) {
  if (node.leftChild == null) {
    return node;
  }
  node.leftChild == leftRightRotate(node.leftChild!);
  return rightRotate(node);
}

Avlnode<E> balanced(Avlnode<E> node) {
  switch (node.balanceFactor) {
    case 2:
    case -2:
    default:
      return node;
  }
}
