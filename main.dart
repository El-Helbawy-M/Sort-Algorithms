import 'Algrothims/Bubble Sort.dart';
import 'Algrothims/Selection Sort.dart';

void main(List<String> args) {
  List values = [2, 1, 63, 7, 3, 39, 9, 54, 9];
  values = SelectionSort(values).sort(2, 7);
  print(values);
}
