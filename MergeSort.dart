void mergeSort(List<int> arr) {
  if (arr.length > 1) {
    int mid = arr.length ~/ 2;
    List<int> left = arr.sublist(0, mid);
    List<int> right = arr.sublist(mid);

    mergeSort(left);
    mergeSort(right);

    int i = 0, j = 0, k = 0;
    while (i < left.length && j < right.length) {
      if (left[i] < right[j]) {
        arr[k] = left[i];
        i++;
      } else {
        arr[k] = right[j];
        j++;
      }
      k++;
    }

    while (i < left.length) {
      arr[k] = left[i];
      i++;
      k++;
    }

    while (j < right.length) {
      arr[k] = right[j];
      j++;
      k++;
    }
  }
}

void main() {
  List<int> numbers = [38, 27, 43, 3, 9, 82, 10];
  mergeSort(numbers);
  print(numbers);
}
