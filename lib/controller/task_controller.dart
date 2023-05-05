import 'package:get/get.dart';
import 'package:to_do_app/models/task.dart';

import '../db/db_helper.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  Future<int> addTask({Task? task}) async {
    print(task!.date);
    return await DBHelper.dbHelper.insert(task: task);
  }
}
