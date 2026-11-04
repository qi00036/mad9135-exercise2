import 'dart:convert';

import 'package:exercise2/exercise2.dart' as exercise2;

void main(List<String> arguments) {
  const String json = 
  '''
    [
      {"id": "84766fdf-9dc8-4b27-953f-a0756d48a2ba", "first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
      {"id": "ef18a663-721c-4905-8220-7d8458ddc644", "first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
      {"id": "2bd58d29-e4ce-443d-ac50-49bea0c7d968", "first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
      {"id": "90e8d858-284b-4d04-80ec-cae6e026ba88", "first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"},
      {"id": "a1b2c3d4-e5f6-4789-abcd-123456789abc", "first":"Maria", "last":"Brown", "email":"brownm@algonquincollege.com"},
      {"id": "b2c3d4e5-f6a7-4890-bcde-23456789abcd", "first":"Jordan", "last":"Wilson", "email":"wilsonj@algonquincollege.com"},
      {"id": "d4e5f6a7-b8c9-4d01-cdef-456789abcdef", "first":"Liam", "last":"Anderson", "email":"andersonl@algonquincollege.com"},
      {"id": "e5f6a7b8-c9d0-4e12-defa-56789abcdef0", "first":"Sophia", "last":"Martin", "email":"martins@algonquincollege.com"}
    ]
  ''';

  final decoded = jsonDecode(json) as List<dynamic>;

  final people = decoded
  .map((person) => Map<String, String>
  .from(person as Map<String, dynamic>))
  .toList();

  final students = exercise2.Students(people);

  print("Added the following students:"); 
  students.output();

  print("---------------------");
  print("Sorted by first name:");
  students.sort("first");
  students.output();

  students.plus({
    "id": "f6a7b8c9-d0e1-4f23-efab-6789abcdef01",
    "first": "Noah",
    "last": "Thompson",
    "email": "thompsonn@algonquincollege.com"
  });
  
  print("---------------------");
  print("Adding Noah Thompson:");
  print("Sort by last name:");
  students.sort("last");
  students.output();
}