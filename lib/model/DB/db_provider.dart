import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();
  static late Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }

  static const tableProject = """
  CREATE TABLE IF NOT EXISTS Project (
        id TEXT PRIMARY KEY,
        managerId TEXT,
        consultantID TEXT
        name TEXT,
        description TEXT,
        created TEXT,
        deadline TEXT
      );""";
  static const tablePerson = """
  CREATE TABLE person (id INTEGER PRIMARY KEY,text TEXT,userId TEXT,placeDateTime TEXT)
  """;

  static const tableAudit = """
  CREATE TABLE IF NOT EXISTS Audit (
        id TEXT PRIMARY key,
        projectId TEXT,
        timeTrackId TEXT,
        jsonChanges TEXT,
        date TEXT,
        employeeId TEXT
      );""";


  Future<Database> initDB() async {
    print("initDB executed");
    // String path = join(await getDatabasesPath(), "core.db");
    // await deleteDatabase(path);

    return await openDatabase('todo.db', version: 2,
        onCreate: (Database db, int version) async {
      await db.execute(tablePerson );
    });
  }
}
