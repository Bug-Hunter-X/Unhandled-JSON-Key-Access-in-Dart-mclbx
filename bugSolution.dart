```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Check if the key exists before accessing it
      if (jsonData.containsKey('keyName')) {
        final value = jsonData['keyName'];
        print(value); 
      } else {
        print('Key "keyName" not found in JSON response.');
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```