class Bussiness {
  String id;
  String name;
  String phone;
  String email;
  String birthday;
  String gender;
  String photoURL;

  Bussiness(
      {this.id,
      this.name,
      this.phone,
      this.email,
      this.birthday,
      this.gender,
      this.photoURL});

  Bussiness.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        phone = json['phone'],
        email = json['email'],
        birthday = json['birthday'],
        gender = json['gender'],
        photoURL = json['photoURL'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'phone': phone,
        'email': email,
        'birthday': birthday,
        'gender': gender,
        'photoURL': photoURL
      };
}
