import 'dart:io';

void main() {
  //1
  String name = "Jonathan";
  print("Mon nom: $name");

  //2
  int a = 5, b = 3;
  print("a + b = ${a + b}");
  print("a - b = ${a - b}");
  print("a * b = ${a * b}");
  print("a / b = ${a / b}");

  //3
  List<String> fruits = ["Mangue", "Pomme", "Ananas", "Poire", "Letchis"];
  fruits.add("Prune");
  print(fruits.last);

  //4
  List<Map<String, dynamic>> personnes = [
    {"nom": "Toky", "age": 15},
    {"nom": "Andry", "age": 40},
    {"nom": "Tantely", "age": 35},
  ];
  personnes.add({"nom": "Narindra", "age": 30});

  //5
  dynamic numerique = 5;
  dynamic chaine = "15";
  numerique = numerique.toString();
  chaine = int.parse(chaine);
  print("numerique: $numerique \t chaine: $chaine");

  //6
  int nombre = 45;
  if (nombre % 2 == 0)
    print("nombre: $nombre est paire");
  else
    print("nombre: $nombre est impaire");
  for (var fruit in fruits) {
    if (fruit.contains('a')) {
      print(fruit);
    }
  }

  //7
  print("Entrer le nom d'une personne:");
  String search = stdin.readLineSync()!;
  var personne;

  for (var p in personnes) {
    if (p["nom"] == search) {
      personne = p;
      print("${personne["nom"]} a ${personne["age"]} ans");
      break;
    }
  }

  if (personne == null) {
    print("$search n'existe pas dans le dictionnaire");
  }

  //8
  for (var i = 2; i < 20; i++) {
    if (isPremier(i))
      print("$i est premier");
    else
      print("$i n'est pas premier");
  }

  //9
  fruits.sort();
  print(fruits);

  //10
  print("Entrer le nom d'une personne a supprimer:");
  String deletedPersonne = stdin.readLineSync()!;
  bool isDeleted = false;
  for (var findPerson in personnes) {
    if (findPerson["nom"] == deletedPersonne) {
      personnes.remove(findPerson);
      isDeleted = true;
      break;
    }
  }
  if (isDeleted)
    print("$deletedPersonne est supprimer du dictionnaire");
  else
    print("$deletedPersonne n'existe pas dans le dictionnaire");

  //11
  List<int> fruitsLength = <int>[];
  for (var fruit in fruits) {
    fruitsLength.add(fruit.length);
  }
  print(fruitsLength.toString());
}

bool isPremier(int nombre) {
  for (var i = 2; i <= nombre / 2; i++) {
    if (nombre % i == 0) {
      return false;
    }
  }
  return true;
}
