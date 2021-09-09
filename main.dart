import 'Algrothims/Bubble Sort.dart';
import 'Algrothims/Merge Sort.dart';
import 'Algrothims/Quick Sort.dart';
import 'Algrothims/Selection Sort.dart';

void main(List<String> args) {
  List values = [9, 8, 7, 6, 5, 20, 19, 12];
  values = MergeSort(values).sort();
  print(values);
}
