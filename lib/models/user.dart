

class User{

  final String name;
  final int age;
  final List<String> professions;

  User({
    required this.name, 
    required this.age, 
     this.professions = const[]
    });

  // User copyWithUser({ //metodo que regresa un usuario - tambien conocido como copyWith
  //    String name = '',
  //    int age = 0,
  //    List<String> professions = const []
  // }){
  //   return User(
  //     name: name ?? this.name,
  //     age: age ?? this.age,
  //     professions: professions ?? this.professions,
  //   );
  // }

  /// ó
    User copyWithUser({ //metodo que regresa un usuario - tambien conocido como copyWith
     String name = '',
     int age = 0,
     List<String> professions = const []
  })=>
     User(
      name: name ?? this.name,
      age: age ?? this.age,
      professions: professions ?? this.professions,
    );
  
}