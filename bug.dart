```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's the potential problem: Assuming JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Consider the type of Exception
    if (e is SocketException) {
      print('Network error: $e');
    } else if (e is FormatException) {
      print('JSON format error: $e');
    } else {
      print('An unexpected error occurred: $e');
    }
    // Re-throw or handle appropriately
    rethrow; 
  }
}
```