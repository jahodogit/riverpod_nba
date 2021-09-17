class Player {
  late String firstName;
  late String lastName;
  late String teamId;
  late String yearsPro;
  late String collegeName;
  late String country;
  late String playerId;
  late String dateOfBirth;
  late String affiliation;
  late String startNba;
  late String heightInMeters;
  late String weightInKilograms;

  Player({
    required this.firstName,
    required this.lastName,
    required this.teamId,
    required this.yearsPro,
    required this.collegeName,
    required this.country,
    required this.playerId,
    required this.dateOfBirth,
    required this.affiliation,
    required this.startNba,
    required this.heightInMeters,
    required this.weightInKilograms,
  });

  Player.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    teamId = json['teamId'];
    yearsPro = json['yearsPro'];
    collegeName = json['collegeName'];
    country = json['country'];
    playerId = json['playerId'];
    dateOfBirth = json['dateOfBirth'];
    affiliation = json['affiliation'];
    startNba = json['startNba'];
    heightInMeters = json['heightInMeters'];
    weightInKilograms = json['weightInKilograms'];
  }
}
