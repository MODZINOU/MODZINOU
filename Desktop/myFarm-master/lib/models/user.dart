class User {
  late int id;
  late String username;
  late String fullname;
  late String titre;
  late String email;
  late String createdAt;
  late String updatedAt;

  User(this.id, this.username, this.fullname, this.email, this.createdAt,
      this.updatedAt, this.titre);

  User.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    username = json["username"];
    fullname = json["fullname"];
    email = json["email"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'fullname': fullname,
        'titre': titre,
        'email': email,
        'created_at': createdAt,
        'updated_at': updatedAt
      };
}
