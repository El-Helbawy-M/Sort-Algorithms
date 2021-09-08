import 'Sort.dart';

class QuickSort extends Sort {
  List values;
  QuickSort(this.values);

  @override
  List sort([int? start, int? end]) {
    int low = start ?? 0, heigh = end ?? this.values.length - 1;
    if (heigh > this.values.length)
      throw outOfRange;
    else if (heigh == this.values.length) heigh - 1;
    int pointer = _process(low, heigh);
    if (low < pointer - 1) sort(low, pointer - 1);
    if (pointer + 1 < heigh) sort(pointer + 1, heigh);
    return values;
  }

  int _process(int low, int heigh) {
    int pointer = low;
    for (int x = low; x < heigh; x++) {
      if (this.values[x] < this.values[heigh]) {
        int buffer = this.values[x];
        this.values[x] = this.values[pointer];
        this.values[pointer] = buffer;
        pointer++;
      }
    }
    int buffer = this.values[pointer];
    this.values[pointer] = this.values[heigh];
    this.values[heigh] = buffer;
    return pointer;
  }
}
