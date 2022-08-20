class Ferme {
  late int id;
  late String nom;
  late String village;
  late String department;
  late String promoteur;
  late String createdAt;
  late String updatedAt;
  late int userId;

  Ferme(this.id, this.nom, this.village, this.department, this.promoteur,
      this.createdAt, this.updatedAt, this.userId);

  Ferme.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    nom = json["nom"];
    village = json["village"];
    createdAt = json["created_at"];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nom': nom,
        'village': village,
        'department': department,
        'promoteur': promoteur,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'user_id': userId
      };
}
