import 'Sort.dart';

class BubbleSort extends Sort {
  List values;
  BubbleSort(this.values) : super();
  @override
  List sort([int? start, int? end]) {
    bool checker = true;
    int limit = end ?? this.values.length - 1;
    if (limit > this.values.length)
      throw outOfRange;
    else if (limit == this.values.length) limit--;
    while (checker) {
      checker = false;
      for (int x = start ?? 0; x < limit; x++) {
        if (this.values[x] > this.values[x + 1]) {
          int buffer = this.values[x];
          this.values[x] = this.values[x + 1];
          this.values[x + 1] = buffer;
          checker = true;
        }
      }
    }
    return values;
  }
}
