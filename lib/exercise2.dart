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
}

int calculate() {
  return 6 * 7;
}
