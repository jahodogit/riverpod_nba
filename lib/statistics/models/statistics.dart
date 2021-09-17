class Statistics {
  late String gameId;
  late String teamId;
  late String points;
  late String pos;
  late String min;
  late String fgm;
  late String fga;
  late String fgp;
  late String ftm;
  late String fta;
  late String ftp;
  late String tpm;
  late String tpa;
  late String tpp;
  late String offReb;
  late String defReb;
  late String totReb;
  late String assists;
  late String pFouls;
  late String steals;
  late String turnovers;
  late String blocks;
  late String plusMinus;
  late String playerId;

  Statistics({
    required this.gameId,
    required this.teamId,
    required this.points,
    required this.pos,
    required this.min,
    required this.fgm,
    required this.fga,
    required this.fgp,
    required this.ftm,
    required this.fta,
    required this.ftp,
    required this.tpm,
    required this.tpa,
    required this.tpp,
    required this.offReb,
    required this.defReb,
    required this.totReb,
    required this.assists,
    required this.pFouls,
    required this.steals,
    required this.turnovers,
    required this.blocks,
    required this.plusMinus,
    required this.playerId,
  });

  Statistics.fromJson(Map<String, dynamic> json) {
    gameId = json['gameId'];
    teamId = json['teamId'];
    points = json['points'];
    pos = json['pos'];
    min = json['min'];
    fgm = json['fgm'];
    fga = json['fga'];
    fgp = json['fgp'];
    ftm = json['ftm'];
    fta = json['fta'];
    ftp = json['ftp'];
    tpm = json['tpm'];
    tpa = json['tpa'];
    tpp = json['tpp'];
    offReb = json['offReb'];
    defReb = json['defReb'];
    totReb = json['totReb'];
    assists = json['assists'];
    pFouls = json['pFouls'];
    steals = json['steals'];
    turnovers = json['turnovers'];
    blocks = json['blocks'];
    plusMinus = json['plusMinus'];
    playerId = json['playerId'];
  }
}
