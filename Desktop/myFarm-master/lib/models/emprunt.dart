class Emprunt {
  late int id;
  late String banq;
  late double montant;
  late double interet;
  late String duree;
  late double note;
  late String date;
  late String createdAt;
  late String updatedAt;
  late String fermeId;

  Emprunt(this.id, this.banq, this.montant, this.interet, this.duree, this.note,
      this.date, this.createdAt, this.updatedAt);

  Emprunt.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    banq = json["banq"];
    montant = json["montant"];
    interet = json["interet"];
    duree = json["duree"];
    note = json["note"];
    date = json["date"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    fermeId = json["ferme_id"];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'banq': banq,
        'montant': montant,
        'interet': interet,
        'duree': duree,
        'note': note,
        'date': date,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'ferme_id': fermeId
      };
}
