void main() {
  final List<int> toBeSorted = [10, 32, 3, 4, 6667, 1, 95, 6];

  print(quickSort(toBeSorted, 0, toBeSorted.length - 1));
}

void _swap(List<int> array, int index1, int index2) {
  final temp = array[index1];

  array[index1] = array[index2];
  array[index2] = temp;
}

int partition(List<int> input, int low, int high) {
  //The last element on list will be the pivot
  final pivot = input[high];

  //This var will help to place the pivot after place all numbers that are lower
  var numbersLowerThanPivotCount = low - 1;

  //He we put all numbers that are lower than pivot to the left side of the list
  for (var i = low; i < high; i++) {
    if (input[i] < pivot) {
      numbersLowerThanPivotCount++;
      _swap(input, i, numbersLowerThanPivotCount);
    }
  }

  //Then we place the pivot right after all lower numbers than pivot
  _swap(input, numbersLowerThanPivotCount + 1, high);

  //Then we return the index of pivot
  return numbersLowerThanPivotCount + 1;
}

List<int> quickSort(List<int> input, int low, int high) {
  //This is the base case, where the recursion should stop
  if (low < high) {
    final pi = partition(input, low, high);

    quickSort(input, low, pi - 1);
    quickSort(input, pi + 1, high);
  }

  return input;
}
