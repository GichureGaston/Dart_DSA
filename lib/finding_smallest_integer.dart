import 'heap.dart';

int? getNthSmallestElement(int n, List<int> elements) {
  var heap = Heap(
    elements: elements,
    priority: Priority.min,
  );
  int? value;
  for (int i = 0; i < n; i++) {
    value = heap.remove();
  }
  return value;
}
