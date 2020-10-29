import 'dart:convert';

import 'package:mds_little_bit/model/meow_model.dart';
import 'package:http/http.dart' as http;

const String url = "http://aws.random.cat/meow";

Future<MeowModel> getMeow() async {
  var response = await http.get(url);
  Map<String, dynamic> responseJson = jsonDecode(response.body);
  MeowModel meowModel = MeowModel.fromJSON(responseJson);
  return meowModel;
}
