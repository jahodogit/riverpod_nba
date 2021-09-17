class Team {
  late String city;
  late String fullName;
  late String teamId;
  late String nickname;
  late String logo;
  late String shortName;
  late String allStar;
  late String nbaFranchise;

  Team({
    required this.city,
    required this.fullName,
    required this.teamId,
    required this.nickname,
    required this.logo,
    required this.shortName,
    required this.allStar,
    required this.nbaFranchise,
  });

  Team.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    fullName = json['fullName'];
    teamId = json['teamId'];
    nickname = json['nickname'];
    logo = json['logo'];
    shortName = json['shortName'];
    allStar = json['allStar'];
    nbaFranchise = json['nbaFranchise'];
  }
}
