

class User{

  final String name;
  final int age;
  final List<String> professions;

  User({
    required this.name, 
    required this.age, 
    required this.professions 
    });


  User copyWith({
    String? name,
    int? age,
    List<String>? professions,
  }) => User(
    name: name ?? this.name, //si no viene como argumento entonces usa la de la instancia
    age: age ?? this.age,
    professions: professions ?? this.professions
  );

}