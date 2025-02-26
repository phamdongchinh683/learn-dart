import 'Person.dart';

class Student extends Person {
  final double score;
  Student(
    int id,
    int age,
    String name,
    String address,
    this.score,
  ) : super(id, name, age, address);

  @override
  String toString() {
    return "ID: $id, Name: $name, Age: $age, Score: ${score.toStringAsFixed(2)}";
  }

  static Student studentScoreMax(List<Student> students) {
    Student a = students[0]; // gan cho no mot cai gia tri dau tien
    for (var student in students) {
      if (student.score > a.score) {
        // if lon hon gia tri [0]
        a = student; // gan lai cho no
      }
    }
    return a;
  }

  static void arrangeStudentFollowScore(List<Student> students) {
    for (int i = 0; i < students.length - 1; i++) {
      for (int j = i + 1; j < students.length; j++) {
        if (students[i].score > students[j].score) {
          Student position = students[i];
          students[i] = students[j];
          students[j] = position;
        }
      }
    }
  }

  static void arrangeStudentDownScore(List<Student> students) {
    for (int i = 0; i < students.length - 1; i++) {
      for (int j = i + 1; j < students.length; j++) {
        if (students[i].score < students[j].score) {
          // so sanh i voi j vd: 1 < 2
          Student position = students[i]; // 1
          students[i] = students[j]; // 1 = 2
          students[j] = position; // 2 = 1 ,[2,]
        }
      }
    }
  }

  static filterStudentsOnPoint55(List<Student> students) {
    List<Student> results = [];

    for (var i in students) {
      if (i.score > 5.5) {
        results.add(i);
      }
    }
    return results;
  }
}
