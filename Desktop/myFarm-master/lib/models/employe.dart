class Employe {
  late int id;
  late String nom;
  late String prenom;
  late String dateDE;
  late String email;
  late String salaire;
  late String note;
  late String createdAt;
  late String updatedAt;
  late int fermeId;

  Employe(this.id, this.nom, this.prenom, this.dateDE, this.email, this.salaire,
      this.note, this.createdAt, this.updatedAt, this.fermeId);

  Employe.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    nom = json["nom"];
    prenom = json["prenom"];
    dateDE = json["dateDE"];
    email = json["email"];
    salaire = json["salaire"];
    note = json["note"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    fermeId = json["ferme_id"];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nom': nom,
        'prenom': prenom,
        'dateDE': dateDE,
        'email': email,
        'salaire': salaire,
        'note': note,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'ferme_id': fermeId
      };
}
