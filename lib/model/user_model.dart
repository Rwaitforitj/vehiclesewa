class UserModel {
  final String id;
  final String fullName;
  final String phoneNumber;
  final String email;
  final bool isRider;

  UserModel(
      {this.isRider = false,
      this.phoneNumber,
      this.id,
      this.fullName,
      this.email});

  UserModel.fromData(
    Map<String, dynamic> data,
  )   : id = data['id'],
        fullName = data['fullName'],
        phoneNumber = data['phoneNumber'],
        email = data['email'],
        isRider = data['isRider'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'email': email,
      'isRider': isRider,
    };
  }
}
