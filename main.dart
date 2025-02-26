import 'dart:convert';

import 'Student.dart';
import 'dart:convert';

void main() {
  // List of students
  List<Student> students = [
    Student(1, 2, 'chinh', "123", 6.5),
    Student(1, 2, 'tung', "123", 4.5),
    Student(1, 2, 'thao', "123", 2.5),
    Student(1, 2, 'hong', "123", 1.5),
    Student(1, 2, 'chinhchinh', "123", 9.5),
  ];
  print('max ${Student.studentScoreMax(students)}');
  Student.arrangeStudentFollowScore(students);
  print('\nStudents sorted by score (ascending):');
  students.forEach(print);
  Student.arrangeStudentDownScore(students);
  print('\nStudents sorted by score (descending):');
  students.forEach(print);
  print('dsaddas ${Student.filterStudentsOnPoint55(students)}');


  Future<Map<String, dynamic>> FecthData(String url, key){
    return http.get(Uri.parse('$url?$key')).then((reponse)
    
    {
      if (response.statusCode == 200) {
          return jsonDecode(response.body);
        } else {
          throw Exception("Failed to load weather data. Status code: ${response.statusCode}");
        }
    })
  }
String apiUrl = "https://api.example.com/weather";
  String apiKey = "your_api_key_here";
  
   FecthData(apiUrl, apiKey).then((data) {
    print("Weather Data: $data");
  }).catchError((error) {
    print("Error: $error");
  });
}


