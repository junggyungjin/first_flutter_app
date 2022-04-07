void main() {
  final items = [1, 2, 3, 4, 5];

  for (var i = 0; i < items.length; i++) {
    print(items[i]); // 1,2,3,4,5
  }

  items.forEach(print);
  
  items.forEach((e) {
    print(e);
  });
  
  items.forEach((e) => print(e));
}