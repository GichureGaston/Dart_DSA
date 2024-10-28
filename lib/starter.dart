import 'heap.dart';

void main() {
  final heap = Heap<int>();
  heap.insert(10);
  heap.insert(7);
  heap.insert(2);
  heap.insert(5);
  heap.insert(1);
  final index = heap.indexOf(1);
  print(heap);
  print(index);
}
