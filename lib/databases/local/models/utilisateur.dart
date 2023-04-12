// ignore_for_file: prefer_const_declarations

import 'dart:convert';

final String tableUtilisateur = "UTILISATEUR";

class UtilisateurFields {
  static final String id = "_id";
  static final String agentminfof = "AGENTMINFOF";
  static final String compte = "COMPTE";
  static final String datecrea = "DATECREA";
  static final String datemotpasseupd = "DATEMOTPASSEUPD";
  static final String dateupda = "DATEUPDA";
  static final String email = "EMAIL";
  static final String etatmotpasse = "ETATMOTPASSE";
  static final String idorganisation = "IDORGANISATION";
  static final String idprofil = "IDPROFIL";
  static final String iudprofil = "IUDPROFIL";
  static final String langue = "LANGUE";
  static final String login = "LOGIN";
  static final String nom = "NOM";
  static final String prenom = "PRENOM";
  static final String statut = "STATUT";
  static final String typeorganisation = "TYPEORGANISATION";
  static final String typeprofil = "TYPEPROFIL";
  static final String usercrea = "USERCREA";
  static final String userupda = "USERUPDA";

  static final List<String> values = [
    id,
    agentminfof,
    compte,
    datecrea,
    datemotpasseupd,
    dateupda,
    email,
    etatmotpasse,
    idorganisation,
    idprofil,
    iudprofil,
    langue,
    login,
    nom,
    prenom,
    statut,
    typeorganisation,
    typeprofil,
    usercrea,
    userupda
  ];
}

class Utilisateur {
  // Attributes de la classe
  int? id;
  String? agentminfof;
  String? compte;
  DateTime? datecrea;
  DateTime? datemotpasseupd;
  DateTime? dateupda;
  String? email;
  String? etatmotpasse;
  String? idorganisation;
  String? idprofil;
  String? iudprofil;
  String? langue;
  String? login;
  String? nom;
  String? prenom;
  String? statut;
  String? typeorganisation;
  String? typeprofil;
  String? usercrea;
  String? userupda;

// Constructeur de la classe UTILISATEUR
  Utilisateur(
      {this.id,
      this.agentminfof,
      this.compte,
      this.datecrea,
      this.datemotpasseupd,
      this.dateupda,
      this.email,
      this.etatmotpasse,
      this.idorganisation,
      this.idprofil,
      this.iudprofil,
      this.langue,
      this.login,
      this.nom,
      this.prenom,
      this.statut,
      this.typeorganisation,
      this.typeprofil,
      this.usercrea,
      this.userupda});

  factory Utilisateur.fromJson(String string) =>
      Utilisateur.fromMap(json.decode(string));

  factory Utilisateur.fromMap(Map<String, dynamic> map) => Utilisateur(
        id: map[UtilisateurFields.id] as int?,
        agentminfof: map[UtilisateurFields.agentminfof] as String,
        compte: map[UtilisateurFields.compte] as String,
        datecrea: DateTime.parse(map[UtilisateurFields.datecrea] as String),
        datemotpasseupd:
            DateTime.parse(map[UtilisateurFields.datemotpasseupd] as String),
        dateupda: DateTime.parse(map[UtilisateurFields.dateupda] as String),
        email: map[UtilisateurFields.email] as String,
        etatmotpasse: map[UtilisateurFields.etatmotpasse] as String,
        idorganisation: map[UtilisateurFields.idorganisation] as String,
        idprofil: map[UtilisateurFields.idprofil] as String,
        iudprofil: map[UtilisateurFields.iudprofil] as String,
        langue: map[UtilisateurFields.langue] as String,
        login: map[UtilisateurFields.login] as String?,
        nom: map[UtilisateurFields.nom] as String,
        prenom: map[UtilisateurFields.prenom] as String,
        statut: map[UtilisateurFields.statut] as String,
        typeorganisation: map[UtilisateurFields.typeorganisation] as String,
        typeprofil: map[UtilisateurFields.typeprofil] as String,
        usercrea: map[UtilisateurFields.usercrea] as String,
        userupda: map[UtilisateurFields.userupda] as String,
      );
  Map<String, dynamic> toMap() => {
        UtilisateurFields.id: id,
        UtilisateurFields.agentminfof: agentminfof,
        UtilisateurFields.compte: compte,
        UtilisateurFields.datecrea: datecrea!.toIso8601String(),
        UtilisateurFields.datemotpasseupd: datemotpasseupd!.toIso8601String(),
        UtilisateurFields.dateupda: dateupda!.toIso8601String(),
        UtilisateurFields.email: email,
        UtilisateurFields.etatmotpasse: etatmotpasse,
        UtilisateurFields.idorganisation: idorganisation,
        UtilisateurFields.idprofil: idprofil,
        UtilisateurFields.iudprofil: iudprofil,
        UtilisateurFields.langue: langue,
        UtilisateurFields.login: login,
        UtilisateurFields.nom: nom,
        UtilisateurFields.prenom: prenom,
        UtilisateurFields.statut: statut,
        UtilisateurFields.typeorganisation: typeorganisation,
        UtilisateurFields.typeprofil: typeprofil,
        UtilisateurFields.usercrea: usercrea,
        UtilisateurFields.userupda: userupda,
      };

// Méthode permettant de faire la copie d'un utilisateur connaissant son login
  Utilisateur copy(
          {int? id,
          String? agentminfof,
          String? compte,
          DateTime? datecrea,
          DateTime? datemotpasseupd,
          DateTime? dateupda,
          String? email,
          String? etatmotpasse,
          String? idorganisation,
          String? idprofil,
          String? iudprofil,
          String? langue,
          String? login,
          String? nom,
          String? prenom,
          String? statut,
          String? typeorganisation,
          String? typeprofil,
          String? usercrea,
          String? userupda}) =>
      Utilisateur(
          id: id ?? this.id,
          agentminfof: agentminfof ?? this.agentminfof,
          compte: compte ?? this.compte,
          datecrea: datecrea ?? this.datecrea,
          datemotpasseupd: datemotpasseupd ?? this.datemotpasseupd,
          dateupda: dateupda ?? this.dateupda,
          email: email ?? this.email,
          etatmotpasse: etatmotpasse ?? this.etatmotpasse,
          idorganisation: idorganisation ?? this.idorganisation,
          idprofil: idprofil ?? this.idprofil,
          iudprofil: iudprofil ?? this.iudprofil,
          langue: langue ?? this.langue,
          login: login ?? this.login,
          nom: nom ?? this.nom,
          prenom: prenom ?? this.prenom,
          statut: statut ?? this.statut,
          typeorganisation: typeorganisation ?? this.typeorganisation,
          typeprofil: typeprofil ?? this.typeprofil,
          usercrea: usercrea ?? this.usercrea,
          userupda: usercrea ?? this.userupda);
}
