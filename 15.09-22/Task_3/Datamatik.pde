void setup(){
   println("Teacher:");
  Teacher myTeacher = new Teacher("Jesper", 32, false);
 System.out.println(myTeacher.name +- myTeacher.age);
 
 println(""); //Used to make space between teacher and student for better overview
 
 println("Students:");
 Student myStudent = new Student ("Rasmus", 28, false, true);
 System.out.println(myStudent.name +- myStudent.age);
 
 Student studyStudent = new Student ("Sebastian", 20, false, true);
 System.out.println(studyStudent.name +- studyStudent.age);
 
 System.out.println("Both from team A");
}
