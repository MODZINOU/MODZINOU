class Materiau {
  late int id;
  late String nom;
  late double quant;
  late double prix;
  late double note;
  late String date;
  late String createdAt;
  late String updatedAt;

  Materiau(this.id, this.nom, this.quant, this.prix, this.note, this.date,
      this.createdAt, this.updatedAt);

  Materiau.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    nom = json["nom"];
    quant = json["quant"];
    prix = json["prix"];
    note = json["note"];
    date = json["date"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nom': nom,
        'quant': quant,
        'prix': prix,
        'note': note,
        'date': date,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
