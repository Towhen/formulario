import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Operation {
  Future<Database> openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'note.db'));
  }
}
