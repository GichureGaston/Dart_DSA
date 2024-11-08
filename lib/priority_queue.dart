import 'heap.dart';
import 'queue.dart';

export 'heap.dart' show Priority;

class PriorityQueue<E extends Comparable<dynamic>> implements Queue<E> {
  PriorityQueue({
    List<E>? elements,
    Priority priority = Priority.max,
  }) {
    _heap = Heap(elements: elements, priority: priority);
  }
  late Heap<E> _heap;

  @override
  // TODO: implement isEmpty
  bool get isEmpty => _heap.isEmpty;
  @override
  E? get peek => _heap.peek;

  @override
  bool enqueue(E element) {
    _heap.insert(element);
    return true;
  }

  @override
  E? dequeue() => _heap.remove();
}
