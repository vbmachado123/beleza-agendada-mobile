class Bussiness {
  String id;
  String name;
  String phone;
  String email;
  String birthday;
  String gender;
  String photoURL;
  String date;

  Bussiness(
      {this.id,
      this.name,
      this.phone,
      this.email,
      this.birthday,
      this.gender,
      this.photoURL,
      this.date});

  Bussiness.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        phone = json['phone'],
        email = json['email'],
        birthday = json['birthday'],
        gender = json['gender'],
        photoURL = json['photoURL'],
        date = json['date'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'phone': phone,
        'email': email,
        'birthday': birthday,
        'gender': gender,
        'photoURL': photoURL,
        'date': date
      };
}
