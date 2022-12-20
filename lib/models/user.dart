class UserModel{
  String? uid;
  String? userName;
  String? email;
  List? groups;

  UserModel({this.uid, this.userName, this.email, this.groups});

  Map<String, dynamic> toMap() {
    return {
      'uid': this.uid,
      'userName': this.userName,
      'email': this.email,
      'groups': this.groups,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid']           as String,
      userName: map['userName'] as String,
      email: map['email']       as String,
      groups: map['groups']     as List,
    );
  }

  @override
  String toString() {
    return 'UserModel{uid: $uid, userName: $userName, email: $email, groups: $groups}';
  }
}