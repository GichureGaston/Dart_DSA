import 'heap.dart';

void main() {
  //The constructor creates a max-heap from the elements of the list. Then the while
  // loop repeatedly removes the largest element until none are left.
  var heap = Heap(elements: [1, 13, 3, 4, 1, 6, 8, 7]);
  print(heap);
  while (!heap.isEmpty) {
    print(heap.remove());
  }
}
