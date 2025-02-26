void selectionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int minIdx = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIdx]) {
        minIdx = j;
      }
    }
    // Hoán đổi
    int temp = arr[minIdx];
    arr[minIdx] = arr[i];
    arr[i] = temp;
  }
}

void main() {
  List<int> numbers = [64, 25, 12, 22, 11];
  selectionSort(numbers);
  print(numbers);
}
