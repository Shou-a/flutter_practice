import 'package:mysql1/mysql1.dart';

class mysql{
  static String host = 'localhost', user = 'root', password ='Pass@Mysql1!@#', db ='DB_mysql';
  static int port = 3306;
  mysql();
  Future<MySqlConnection> getConnection() async{
    var settings = new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
    );
    return await MySqlConnection.connect(settings);
  }
}