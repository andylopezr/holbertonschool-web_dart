// Create User class with constructor

class User {
  String name;
  int age;
  double height;

  // Constructor with parameters - must use required so not nullable
  User({required this.name, required this.age, required this.height});

  // Returns map representation of user
  Map toJson() {
    return {
      "name": name,
      "age": age,
      "height": height
    };
  }
}
