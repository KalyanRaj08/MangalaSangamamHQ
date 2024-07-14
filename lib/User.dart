import 'package:cloud_firestore/cloud_firestore.dart';
import 'FormPage.dart';

class User {
  String id;
  String name;
  int age;
  DateTime dob;
  String div;
  String father;
  String mother;
  String job;
  String city;
  String phone;
  double salary;
  String study;

  User(this.id, this.name, this.age, this.dob, this.div, this.father,
      this.mother, this.job, this.city, this.phone, this.salary, this.study);

  static User fromJson(Map<String, dynamic> json) => User(
        json['id'],
        json['name'],
        json['age'] as int,
        (json['dob'] as Timestamp).toDate(),
        json['div'],
        json['father'],
        json['mother'],
        json['job'],
        json['city'],
        json['phone'],
        json['salary'],
        json['study'],
      );
}
