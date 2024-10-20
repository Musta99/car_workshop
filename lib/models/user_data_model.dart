class UserModel {
  final String userEmail;
  final String userPassword;
  final String userId;
  final String userRole;

  UserModel(
      {required this.userEmail,
      required this.userPassword,
      required this.userId,
      required this.userRole});

  Map<String, dynamic> toJson() => {
        "userEmail": userEmail,
        "userPassword": userPassword,
        "userId": userId,
        "userRole": userRole,
      };
}
