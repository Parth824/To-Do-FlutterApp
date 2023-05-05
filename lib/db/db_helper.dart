import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/task.dart';

class DBHelper {
  DBHelper._();

  static final DBHelper dbHelper = DBHelper._();
  Database? database;
  Future<void> initDb() async {
    String path1 = await getDatabasesPath();
    String path = join(path1, 'my.db');

    database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        String q =
            "CREATE TABLE IF NOT EXISTS tasks(id INTEGER AUTO_INCREMENT PRIMARY KEY ,title TEXT,note TEXT,date TEXT,startTime TEXT,endTime TEXT,remind INTEGER,repeat TEXT,color INTEGER,isCompleted INTEGER)";

        return db.execute(q);
      },
    );
  }

  Future<int> insert({Task? task}) async {
    String q =
        "Insert into tasks(title,note,date,startTime,endTime,remind,repeat,color,isCompleted) values(?,?,?,?,?,?,?,?,?)";
    List k = [
      task!.title,
      task.note,
      task.date,
      task.startTime,
      task.endTime,
      task.remind,
      task.repeat,
      task.color,
      task.isCompleted,
    ];
    int ind = await database!.rawInsert(q, k);
    return ind;
  }

  Future<List<Map<String, Object?>>?> selectAll({String? date}) async {
    String q = "SELECT * FROM tasks WHERE date = ?";
    List k = [date];
    List<Map<String, Object?>>? data = await database?.rawQuery(q,k);
    print(data);
    return data;
  }
}
