import 'package:flutter_app_cuestonario/models/note.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Operation {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'note.db'),
        onCreate: (db, version) {
      return db.execute(
          "CREATE TABLE notes (id INTEGER PRIMARY KEY, title TEXT, content TEXT)");
    }, version: 1);
  }

  static Future<void> insert(Note note) async {
    Database database = await _openDB();

    return database.insert("notes", note.toMap());
  }
}
