import 'package:flutter/widgets.dart';

class PasswordShower with ChangeNotifier {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  TextEditingController get usename => _username;
  TextEditingController get password => _password;
}
