class Customer {
  String id;
  String name;
  String phone;
  String password;
  String email;
  String birthday;
  String gender;
  String photourl;
  String created_at;
  String updated_at;

  Customer(
      {this.id,
      this.name,
      this.phone,
      this.password,
      this.email,
      this.birthday,
      this.gender,
      this.photourl,
      this.created_at,
      this.updated_at});

  Customer.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        phone = json['phone'],
        password = json['password'],
        email = json['email'],
        birthday = json['birthday'],
        gender = json['gender'],
        photourl = json['photourl'],
        created_at = json['created_at'],
        updated_at = json['updated_at'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'phone': phone,
        'password': password,
        'email': email,
        'birthday': birthday,
        'gender': gender,
        'photoURL': photourl,
        'created_at': created_at,
        'updated_at': updated_at
      };
}
