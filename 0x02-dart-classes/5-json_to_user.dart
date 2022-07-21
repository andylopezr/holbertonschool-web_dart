class User {
  late int id;
  late String name;
  late int? age;
  late double? height;

  User({required int id, required String name, int? age, double? height}) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map toJson() => {
        'id': this.id,
        'name': this.name,
        'age': this.age,
        'height': this.height
      };

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return new User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }

  String toString() {
    return 'User(id : ${this.id} ,name: ${this.name},  age: ${this.age}, height: ${this.height})';
  }
}
