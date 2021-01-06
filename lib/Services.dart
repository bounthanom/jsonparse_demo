import 'package:http/http.dart' as http;
import 'Users.dart';

class Services {
  //Link of JSON
  static const String url = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(url);
      if(200 == response.statusCode) {
        final List<User> users = usersFromJson(response.body);
        return users;

      } else {
      
        // ignore: deprecated_member_use
        return List<User>();
      }
    } catch (e) {
      
      // ignore: deprecated_member_use
      return List<User>();
    }
  }
}