import 'dart:convert';

import 'package:cozy/models/space.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  final url = 'https://bwa-cozy.herokuapp.com/recommended-spaces';

  getRecommendedSpaces() async {
    final uri = Uri.parse(url);
    var result = await http.get(uri);

    print(result.body);
    print(result.statusCode);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();

      return spaces;
    } else {
      return <Space>[];
    }
  }
}
