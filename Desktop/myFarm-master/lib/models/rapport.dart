class Rapport {
  late int id;
  late String date;
  late String effecdep;
  late double mort;
  late String effecact;
  late String consonourri;
  late String consoeau;
  late String traitement;
  late String oeufcollec;
  late String oeufcasse;
  late double note;
  late String createdAt;
  late String updatedAt;
  late int employeId;
  late int batimentId;
  late int activiteId;

  Rapport(
      this.id,
      this.date,
      this.effecdep,
      this.mort,
      this.effecact,
      this.consonourri,
      this.consoeau,
      this.traitement,
      this.oeufcollec,
      this.oeufcasse,
      this.note,
      this.createdAt,
      this.updatedAt,
      this.employeId,
      this.batimentId,
      this.activiteId);

  Rapport.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    date = json["date"];
    effecdep = json["effecdep"];
    mort = json["mort"];
    effecact = json["effecact"];
    consonourri = json["consonourri"];
    consoeau = json["consoeau"];
    traitement = json["traitement"];
    oeufcollec = json["oeufcollec"];
    oeufcasse = json["oeufcasse"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    employeId = json["employe_id"];
    batimentId = json["batiment_id"];
    activiteId = json["activite_id"];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date,
        'effecdep': effecdep,
        'mort': mort,
        'effecact': effecact,
        'consonourri': effecact,
        'consoeau': effecact,
        'traitement': effecact,
        'oeufcollec': effecact,
        'oeufcasse': oeufcasse,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'employe_id': employeId,
        'batimentId': batimentId,
        'activiteId': activiteId
      };
}
