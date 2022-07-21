// Class with constructor, method, and overriding toString() method

class Password {
  String password = "";

  Password() {
    this.password = password;
  }

  bool isValid() {
    // Password length between 8 and 16 characters long
    return (this.password.length >= 8 && this.password.length <= 16) &&
        // Password contains upper and lower case letters
        this.password.contains(RegExp(r'[a-z]')) &&
        this.password.contains(RegExp(r'[A-Z]')) &&
        // Password contains at numbers
        this.password.contains(RegExp(r'[0-9]'));
  }

  // toString() method already exists in Object class
  @override
  String toString() => "Your Password is: ${this.password}";
}
