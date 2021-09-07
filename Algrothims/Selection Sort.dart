import 'Sort.dart';

class SelectionSort extends Sort {
  List values;
  SelectionSort(this.values);

  @override
  sort([int? start, int? end]) {
    int pointer = start ?? 0, limit = end ?? this.values.length;

    if (limit > this.values.length)
      throw outOfRange;
    else if (limit == this.values.length) limit - 1;

    for (int x = start ?? 0; x < limit; x++) {
      int min = this.values[pointer], postion = pointer;
      for (int y = pointer; y < limit; y++) {
        if (this.values[y] <= min) {
          min = this.values[y];
          postion = y;
        }
      }
      int buffer = this.values[postion];
      this.values[postion] = this.values[pointer];
      this.values[pointer] = buffer;
      pointer++;
    }
    return this.values;
  }
}
