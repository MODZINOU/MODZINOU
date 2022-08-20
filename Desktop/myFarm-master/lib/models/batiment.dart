class Batiment {
  late int id;
  late String nom;
  late String superficie;
  late String createdAt;
  late String updatedAt;
  late int fermeId;

  Batiment(this.id, this.nom, this.superficie, this.createdAt, this.updatedAt,
      this.fermeId);

  Batiment.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    nom = json["nom"];
    superficie = json["superficie"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    fermeId = json["ferme_id"];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nom': nom,
        'superficie': superficie,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'ferme_id': fermeId
      };
}
