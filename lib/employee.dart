

import 'package:flutter/material.dart';
import 'package:flutter_listviewbuilder/model/employeemodel.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {

  late List<employees> employeeList;
@override
  void initState() {
    employeeList=[
      employees(employeename:"Niveditha",employeeid:"202245",employeephone:"9789045632",designation:"Sr. UI/Ux Designer"),
      employees(employeename:"Sharon",employeeid:"202246",employeephone:"9784565632",designation:"Software Tester"),
       employees(employeename:"Niveditha",employeeid:"202245",employeephone:"9789045632",designation:"Social Media Manager"),
      employees(employeename:"Sharon",employeeid:"202246",employeephone:"9784565632",designation:"Manager"),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: employeeList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Employee ID : "+"${employeeList[index].employeeid}",style: TextStyle(color: Colors.black,fontSize: 16),),
                SizedBox(height: 3,),
                 Text("${employeeList[index].employeename}",style: TextStyle(color: Colors.grey,fontSize: 14),),
                 SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${employeeList[index].employeephone}",style: TextStyle(color: Colors.blue,fontSize: 16),),
                        SizedBox(width: 6,),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(color:Color.fromARGB(255, 236, 236, 236),borderRadius: BorderRadius.circular(10)),
                    child: Text("${employeeList[index].designation}",style: TextStyle(color: Colors.black,fontSize: 12),)),

                    ],
                  ),
               
              ],
            ),
          );
        }
        ),
    );
  }
}