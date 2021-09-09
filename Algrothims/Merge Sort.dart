import 'Sort.dart';

class MergeSort extends Sort {
  List values;
  MergeSort(this.values);
  @override
  List sort([int? start, int? end]) {
    if (!(start == null || end == null)) {
      List buffer = this.values.sublist(start, end);

      buffer = _devide(buffer);
      int index = 0;
      this.values.forEach((element) {
        if (index >= start && index < end) this.values[index] = buffer[index - start];
        index++;
      });
    } else
      this.values = _devide(this.values);
    return this.values;
  }

  List _devide(List values) {
    if (values.length != 1) {
      List right, left;
      if (values.length % 2 == 0) {
        right = values.sublist(values.length ~/ 2);
        left = values.sublist(0, values.length ~/ 2);
      } else {
        left = values.sublist(0, (values.length ~/ 2) + 1);
        right = values.sublist((values.length ~/ 2) + 1);
      }
      right = _devide(right);
      left = _devide(left);
      return _merge(right, left);
    } else
      return values;
  }

  List _merge(List right, List left) {
    int r = 0, l = 0;

    List values = [];
    while (r < right.length || l < left.length) {
      if (r < right.length && l < left.length) {
        if (right[r] <= left[l]) {
          values.add(right[r]);
          r++;
        } else {
          values.add(left[l]);
          l++;
        }
      } else if (l < left.length) {
        values.add(left[l]);
        l++;
      } else if (r < right.length) {
        values.add(right[r]);
        r++;
      }
    }
    return values;
  }
}
