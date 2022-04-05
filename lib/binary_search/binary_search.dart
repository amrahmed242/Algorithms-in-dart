int? binarySearch({required List<num> array, required num value}) {
  var mid = 0;
  var startIndex = 0;
  var endIndex = array.length - 1;
  while (startIndex <= endIndex) {
    mid = ((startIndex + endIndex) / 2).floor();
    if (array[mid] == value) {
      return mid;
    } else if (value > array[mid]) {
      startIndex = mid + 1;
    } else {
      endIndex = mid - 1;
    }
  }
}
