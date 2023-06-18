/*
Take two lists, for example:

  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

and write a program that returns a list that contains only the elements that are common between them (without duplicates). 
Make sure your program works on two lists of different sizes.
*/
void main() {
  List<int> list0 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89],
      list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  print("************** Technique X **************");
  techniqueX(list0, list1);
  print("************** Technique Y **************");
  techniqueY(list0, list1);
}

void techniqueX(List a, List b) {
  List<int> output = [];
  a.forEach((element0) {
    b.forEach((element1) {
      if (element0 == element1) output.add(element0);
    });
  });

  print(Set.from(output).toList());
}

void techniqueY(List a, List b) =>
    print(Set.from(a).intersection(Set.from(b)).toList());
