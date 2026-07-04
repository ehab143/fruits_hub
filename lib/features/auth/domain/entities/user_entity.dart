class UserEntity {
  final String name;
  final String email;
  final String uid;

  UserEntity({required this.name, required this.email, required this.uid});

  // ignore: strict_top_level_inference
  toMap() {
    return {"name": name, "email": email, "uid": uid};
  }
}
