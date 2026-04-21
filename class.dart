class School {
  School(this.teacherName, this.studentName);
  final String? teacherName;
  String? studentName;
  void displayDetails(){
    print(teacherName);
    print(studentName);
  }
}
void main(){
  School school = School("Binod Bhandari", "Archana Sharma");
  school.displayDetails();
}