import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/models/user_model.dart';

class HomeController {
  var currentPage = 0;

  void setPage(int index) {
    currentPage = index;
  }

  Future<String> getAuthenticatedUser() async {
    var prefs = await SharedPreferences.getInstance();

    return UserModel.fromJson(prefs.getString("user")!).name;
  }
}
