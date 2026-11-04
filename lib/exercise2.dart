class Students{
  List<Map<String, String>> people;

  Students(this.people);

  void output(){
    for(final person in people){
      print(person);
    }
  }

  void sort(String field){
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void plus(Map<String, String> person){
    people.add(person);
  }

  void remove(String field, String value){
    people.removeWhere((person) => person[field] == value);
  }
}

//Kept it because the red colour in the test file is annoying as hell.
int calculate() {
  return 6 * 7;
}