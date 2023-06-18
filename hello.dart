typedef DoMath(int a, int b);
add(int a, int b) => print("${a}+${b}=${a + b}");
sub(int a, int b) => print("${a}-${b}=${a - b}");
mult(int a, int b) => print("${a}*${b}=${a * b}");
modulo(int a, int b) => print("${a}%${b}=${a % b}");

void main() {
  final DEV_NAME = "Someron Bakuli";
  print("Hello, ${DEV_NAME}!");
  print("Age: 2 = ${tellMyGrade(2)}");
  print("Age: 4 = ${tellMyGrade(4)}");
  print("Age: 5 = ${tellMyGrade(5)}");
  print("Age: 5.3 = ${tellMyGrade(5.3)}");
  print("Age: 6 = ${tellMyGrade(6)}");
  print("Age: 6.5 = ${tellMyGrade(6.5)}");
  print("Age: 12 = ${tellMyGrade(12)}");
  print("Age: 17 = ${tellMyGrade(17)}");
  print("Age: 21 = ${tellMyGrade(21)}");

  print("Veg: Patol = ${whatShouldICook("Patol")}");
  print("Veg: Darosh = ${whatShouldICook("Darosh")}");
  print("Veg: Gajar = ${whatShouldICook("Gajar")}");
  print("Veg: Lanka = ${whatShouldICook("Lanka")}");

  List<Object> hatarogenusList = ["", 78, 78.09, double.infinity];
  print(hatarogenusList);

  var list = List.filled(9, null, growable: false);
  var lists = List.generate(9, (i) => null, growable: false);
  print("${list} ${lists}");

  Unicodes
  String unicodes = "Someron Bakuli";
  print(unicodes.runes);

  unicodes.codeUnits.forEach((int u) {
    print(u);
  });
  print(unicodes.codeUnits);
  
  // TypeDef
  DoMath func = add;
  func(7, 8);
  func = sub;
  func(7, 8);
  func = mult;
  func(7, 8);
  func = modulo;
  func(7, 8);

}

String whatShouldICook(String veg_name) {
  String result;
  veg_name = veg_name.toLowerCase();
  switch (veg_name) {
    case "patol":
    case "darosh":
      result = "Tarkari";
      break;
    case "gajar":
      result = "Halwa";
      break;
    default:
      result = "Go and Sleep";
  }

  return result;
}

String tellMyGrade(double age) {
  if (age > 17)
    return "College";
  else if (age > 6 && age <= 17)
    return "Grade : ${(age - 5).floor()}";
  else if (age >= 5 && age <= 6) return "Kindergarten";

  return "Stay Home";
}

void basic() {
  int abc;
  abc = 1;
  print("ABC : ${abc}");
  late int bc;
  bc = 1;
  print("BC : ${bc}");

  int? k;
  print("k : ${k}");

  print("5/2=${5 / 2}");
  print("5~/2=${5 ~/ 2}");
  print("13/5=${13 / 5}");
  print("13~/3=${13 ~/ 5}"); // Returns only non-decimal value (2.6==2.1)
}
