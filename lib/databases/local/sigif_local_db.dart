import 'package:sigif2/databases/local/models/utilisateur.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class Sigif2DB {
  static final Sigif2DB instance = Sigif2DB._init();

  final String databasename = 'sigif2.db';

  static Database? _database;
  Sigif2DB._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB(databasename);
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = p.join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _onCreateDB);
  }

  Future _onCreateDB(Database db, int version) async {
    final idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
    final booleanType = "BOOLEAN NOT NULL";
    final integerType = "INTEGER NOT NULL";
    final textType = "TEXT NOT NULL";

    // Méthode a duplpiquer pour créer autant de la table que souhaité
    // await db.execute("""
    // CREATE TABLE $tableNotes (
    //   ${NoteFields.id} $idType,
    //   ${NoteFields.isImportant} $booleanType,
    //   ${NoteFields.number} $integerType,
    //   ${NoteFields.title} $textType,
    //   ${NoteFields.description} $textType,
    //   ${NoteFields.time} $textType
    // )
    // """);
  }

  // Implémentation du CRUD

  // Méthode permettant la création d'une note en base données
  Future<Utilisateur> createUtilisateur(Utilisateur user) async {
    final db = await instance.database;

/**
 * Autre façon de faire une insertion en base de données
 */
    /* final json = note.toMap();
    final columns =
        "${NoteFields.title}, ${NoteFields.description}, ${NoteFields.time}";

    final values =
        "${json[NoteFields.title]}, ${json[NoteFields.description]}, ${json[NoteFields.time]}";
    final id =
        db.rawInsert("INSERT INTO $tableNotes ($columns) VALUES ($values)");
    */

    final id = await db.insert(tableUtilisateur, user.toMap());

    return user.copy(id: id);
  }

  // Méthode permettant de lire les informations sur un utilisateur
  //en base de données
  Future<Utilisateur?> readUtilisateur(String login) async {
    final db = await instance.database;

    final maps = await db.query(
      tableUtilisateur,
      columns: UtilisateurFields.values,
      where: "${UtilisateurFields.login} = ?",
      whereArgs: [login],
    );

    if (maps.isNotEmpty) {
      return Utilisateur.fromMap(maps.first);
    }
    return null;
  }

  // Méthode permettant de lire tous les utilisateurs de la base de données
  Future<List<Utilisateur>> readAllUtilisateurs() async {
    final db = await instance.database;

    final orderBy = "${UtilisateurFields.login} DESC";

    final result = await db.query(tableUtilisateur, orderBy: orderBy);
    return result.map((json) => Utilisateur.fromMap(json)).toList();
  }

  // Méthode permettant de faire la mise à jour des informations
  // dans la base de données
  Future<int> updateUtilisateur(Utilisateur user) async {
    final db = await instance.database;
    return db.update(
      tableUtilisateur,
      user.toMap(),
      where: "${UtilisateurFields.id} = ?",
      whereArgs: [user.login],
    );
  }

// Méthode de suppression des données de la base de données
  Future<int> deleteUtilisateur(String login) async {
    final db = await instance.database;
    return await db.delete(tableUtilisateur,
        where: "${UtilisateurFields.login} = ?", whereArgs: [login]);
  }

  // Méthode de fermeture de la base de données
  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
