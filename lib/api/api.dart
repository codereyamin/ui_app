import 'dart:convert';

import 'package:http/http.dart' as http;

getApiData() async {
  try {
    final response = await http.get(Uri.parse("https://flutter.abctheme.com/api"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data["menu"];
    }
  } catch (e) {
    print("error form api");
  }
}
