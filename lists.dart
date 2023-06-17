import 'dart:io';

void main(List<String> arg) {
  List<int> collection = [];
  if (arg.length > 0) {
    for (String element in arg) collection.add(int.parse(element));
  } else {
    collection = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  }

  print("Input List : ${collection}");
  print("************ Printing Value Less than 5 ************");

  print("Traditional for loop with linier increment variable");
  for (var i = 0; i < collection.length; i++) {
    if (collection[i] >= 5) stdout.write("${collection[i]} ");
  }

  print("\nTraditional for loop with 'in' operator");
  for (var el in collection) {
    if (el >= 5) stdout.write("${el} ");
  }

  print("\nOne line version");

  print([
    for (var el in collection)
      if (el >= 5) el
  ]);
}
