import 'Algrothims/Bubble Sort.dart';
import 'Algrothims/Quick Sort.dart';
import 'Algrothims/Selection Sort.dart';

void main(List<String> args) {
  List values = [2, 1, 63, 7, 3, 39, 9, 54, 9];
  values = QuickSort(values).sort(2, 30);
  print(values);
}
