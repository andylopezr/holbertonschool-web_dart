// Update User class from 1-usertojson.dart
// Add id property, fromJson method, and override toString method

class User {
  int id;
  String name;
  int age;
  double height;

  // Constructor with parameters - must use required so not nullable
  User({required this.id, required this.name, required this.age, required this.height});

  // Returns map representation of user
  Map toJson() {
    return {
      "id": this.id,
      "name": name,
      "age": age,
      "height": height
    };
  }

  // Returns string representation of user
  // userJson is map/json representation of user - convert to string
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson["id"],
      name: userJson["name"],
      age: userJson["age"],
      height: userJson["height"]
    );
  }

  // Override default toString() method
  @override
  String toString() => "User(id : $id ,name: $name,  age: $age, height: $height)";
}
