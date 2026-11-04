class Students{
  List<Map<String, String>> people;

  Students(this.people);

  void output(){
    for(final person in people){
      print(person);
    }
  }
}

int calculate() {
  return 6 * 7;
}
