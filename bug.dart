```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = jsonDecode(response.body);
      // Accessing a non-existent key in the JSON response
      final value = jsonData['nonExistentKey'];
      print(value);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    //Missing proper error handling and logging
  }
}
```