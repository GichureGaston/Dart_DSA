import 'dart:math' as math;

import 'avl_node.dart';

AvlNode<E> leftRotate<E>(AvlNode<E> node) {
  final pivot = node.rightChild!;
  node.rightChild = pivot.leftChild;
  pivot.leftChild = node;

  node.height = 1 + math.max(node.leftHeight, node.rightHeight);
  pivot.height = 1 + math.max(pivot.leftHeight, pivot.rightHeight);
  return pivot;
}

AvlNode<E> rightRotate<E>(AvlNode<E> node) {
  final pivot = node.leftChild!;
  node.leftChild = pivot.rightChild;
  pivot.rightChild = node;

  node.height = 1 + math.max(node.leftHeight, node.rightHeight);
  pivot.height = 1 + math.max(pivot.leftHeight, pivot.rightHeight);
  return pivot;
}

AvlNode<E> rightLeftRotate<E>(AvlNode<E> node) {
  if (node.rightChild == null) {
    return node;
  }
  node.rightChild = rightRotate(node.rightChild!);
  return leftRotate(node);
}

AvlNode<E> leftRightRotate<E>(AvlNode<E> node) {
  if (node.leftChild == null) {
    return node;
  }
  node.leftChild = leftRotate(node.leftChild!);
  return rightRotate(node);
}

AvlNode<E> balanced<E>(AvlNode<E> node) {
  switch (node.balanceFactor) {
    case 2:
      final left = node.leftChild;
      if (left != null && left.balanceFactor == -1) {
        return leftRightRotate(node);
      } else {
        return rightRotate(node);
      }
    case -2:
      final right = node.rightChild;
      if (right != null && right.balanceFactor == 1) {
        return rightLeftRotate(node);
      } else {
        return leftRotate(node);
      }
    default:
      return node;
  }
}

AvlNode<E> _insertAt<E extends Comparable>(AvlNode<E>? node, E value) {
  if (node == null) {
    return AvlNode(value);
  }
  if (value.compareTo(node.value) < 0) {
    node.leftChild = _insertAt(node.leftChild, value);
  } else {
    node.rightChild = _insertAt(node.rightChild, value);
  }
  final balancedNode = balanced(node);
  balancedNode.height =
      1 + math.max(balancedNode.leftHeight, balancedNode.rightHeight);
  return balancedNode;
}
