```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correct JSON decoding with error handling
      final data = jsonDecode(response.body);
      // Use data here
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Improved Error Handling
    print('Error: $e');
    if (e is FormatException) {
      print('Invalid JSON format received.');
    }
  }
}
```