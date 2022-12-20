
class GroupChats {
  String? admin;
  List? concert;
  String? explanation;
  String? groupIcon;
  String? groupID;
  String? groupName;
  List? members;
  String? recentMessage;
  String? recentMessageSender;

  GroupChats({this.admin, this.concert, this.explanation, this.groupIcon,
  this.groupID, this.groupName, this.members, this.recentMessage, this.recentMessageSender});

  Map<String, dynamic> toMap() {
    return {
      'admin': this.admin,
      'concert': this.concert,
      'explanation': this.explanation,
      'groupIcon': this.groupIcon,
      'groupId': this.groupID,
      'groupName': this.groupName,
      'members': this.members,
      'recentMessage': this.recentMessage,
      'recentMessageSender': this.recentMessageSender

    };
  }

  factory GroupChats.fromMap(Map<String, dynamic> map) {
    return GroupChats(
      admin: map['admin']                   as String,
      concert: map['concert']               as List,
      explanation: map['explanation']       as String,
      groupIcon: map['groupIcon']           as String,
      groupID: map['groupId']             as String,
      groupName: map['groupName']           as String,
      members: map['members']               as List,
      recentMessage: map['recentMessage']   as String,
      recentMessageSender: map['recentMessageSender']   as String,

    );
  }


}