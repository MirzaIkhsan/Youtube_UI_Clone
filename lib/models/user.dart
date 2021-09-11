class User {
  int id;
  String username;
  String email;
  String password;
  String photoUrl;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.photoUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      photoUrl: json['photoUrl'],
    );
  }
}
