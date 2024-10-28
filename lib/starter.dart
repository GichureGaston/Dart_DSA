import 'heap.dart';

void main() {
  final heap = Heap<int>();
  heap.insert(11);
  heap.insert(8);
  heap.insert(5);
  heap.insert(4);
  heap.insert(6);
  heap.insert(2);
  heap.insert(1);
  heap.insert(3);
  final root = heap.remove();
  print(root);
  print(heap);
}
