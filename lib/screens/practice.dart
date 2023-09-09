
// ignore_for_file: avoid_print, camel_case_types, non_constant_identifier_names

void main() {
  print("Hello");
  // stdout.write("Enter Your Name: ");
  // var name = stdin.readLineSync();
  // print("Welcome, $name");

  // Human(); // Creating a class object

  // Declaration of Variable

  // int a;
  // a = 5;
  // print(a);
  // a = 7;
  // print(a);

  // BigInt longValue;
  // longValue = BigInt.parse("5642545515645622556622");
  // print(longValue);

  // double percentage = 95.26;
  // print(percentage);

  // // var Data Type
  // var rollno = 10;
  // rollno =14;
  // print(rollno);

  // // Dynamic Data Type
  // var section;
  // section = 'A';
  // section = 10;
  // section = false;

  // print(section);

  // Create object of the class
  // var n = names();
  // Calling the function using object of the class
  // n.printname("A");
  // n.printname("B");
  // n.printname("C");
  // n.printname("D");

  // n.Add(10, 5);
  // n.Add(300, 200);

  // List
  // var list = [10, 20, 30, 40];
  // print(list);

  // // add element at last 
  // list.add(50);
  // print(list);
  // print( " ");

  // // add the all elements of the previous list in the empty list 
  // var list1 = [];
  // list1.addAll(list);
  // print("list1 : ${list1}");

  // // insert the element at the specific index
  // list1.insert(2, 70);
  // print(list1);

  // // insert all the elements of the the previous list to the new list at the specific index 
  // list1.insertAll(3, list);
  // print(list1);

  // // update the element at the specific index
  // list1[2]= 80;
  // print(list1);

  // // replace the range by other elemnts
  // list1.replaceRange(0, 7,[10]);
  // print(list1);

  // // remove the elements
  // list1.removeLast();
  // print(list1);

  // list1.removeAt(2);
  // print(list1);

  // list1.removeRange(1, 2);
  // print(list1);

  // list1.remove(10);
  // print(list1);

  // print("Length : ${list.length}");
  // print("Reversed : ${list1.reversed}");
  // print("First : ${list1.first}");
  // print("Last : ${list1.last}");
  // print("isEmpty : ${list1.isEmpty}");
  // print("isNotEmpty : ${list1.isNotEmpty}");
  // print("isNotEmpty : ${list1.elementAt(2)}");


  // Map
  // var studentDetails = {
  //   "name":"Kshitiz",
  //   "rollno": 029,
  //   "batch":2019-23,
  //   "clear":true
  // };
  // print(studentDetails);

  var studentDetails = {};
  studentDetails["name"]="Kshitiz";
  studentDetails["rollno"]= 029;
  studentDetails["batch"]= 2019;
  studentDetails["clear"]= true;

  print(studentDetails);

  print(studentDetails.isEmpty);
  print(studentDetails.isNotEmpty);
  print(studentDetails.keys);
  print(studentDetails.values);
  print(studentDetails.length);
  print(studentDetails.containsKey("nam"));
  print(studentDetails.containsValue(029));

  print(studentDetails.remove("rollno"));
  print(studentDetails);



  

}

// Create Class
class names {
  //Create Function

  void printname(String name) {
    print(name);
  }

  int Add(int no1, int no2) {
    int sum = no1 + no2;
    print(sum);
    return sum;
  }
}
