// ignore_for_file: unused_import

import 'package:http/http.dart' as http;
import 'package:mysql1/mysql1.dart';

Future main(List<String> args) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "root",
    db: "projetodart",
  ));

  var result = await conn.query("use projetodart;");
  var result2 = await conn.query("select * from Alunos;");
  print(result2);
  await conn.close();
}
