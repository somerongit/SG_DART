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
