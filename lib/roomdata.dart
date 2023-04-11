import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project_screens/globalVars.dart';
import 'package:flutter_project_screens/record.dart';
import 'package:flutter_project_screens/widgets/CustomDropDown/customdropdown.dart';

class RoomData extends StatefulWidget {
  const RoomData({super.key});

  @override
  State<RoomData> createState() => _RoomDataState();
}

class _RoomDataState extends State<RoomData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
            color: GlobalVars.themecolor),
        child: Stack(children: [
          Positioned(
            top: 80,
            left: 0,
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
            ),
          ),
          Positioned(
              top: 115,
              left: 20,
              child: Text(
                "Room Data",
                style: TextStyle(
                    fontSize: 25,
                    color: GlobalVars.themecolor,
                    fontWeight: FontWeight.w800),
              )),
        ]),
      ),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Class",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: GlobalVars.themecolor.withOpacity(1),
                    fontSize: 18),
              ),
              SizedBox(height: 7),
              CustomSearchableDropdown(
                backgroundColor: Colors.white,
                items: ["BCS", "BIT", "BAI"],
                onChanged: (item) {
                  print(item);
                },
                selectedItem: "BCS",
                showSearchBox: true,
                validate: (String? item) {
                  if (item == null)
                    return "Required field";
                  else
                    return null;
                },
              ),
            ],
          )),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Section",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: GlobalVars.themecolor.withOpacity(1),
                    fontSize: 18),
              ),
              SizedBox(height: 7),
              CustomSearchableDropdown(
                backgroundColor: Colors.white,
                items: ["4A", "4B", "4C", "5A"],
                onChanged: (item) {
                  print(item);
                },
                selectedItem: "4A",
                showSearchBox: true,
                validate: (String? item) {
                  if (item == null)
                    return "Required field";
                  else if (item == "Brasil")
                    return "Invalid item";
                  else
                    return null;
                },
              ),
            ],
          )),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Subject",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: GlobalVars.themecolor.withOpacity(1),
                    fontSize: 18),
              ),
              SizedBox(height: 7),
              CustomSearchableDropdown(
                backgroundColor: Colors.white,
                items: [
                  "PROGRAMMING FUNDAMENTALS",
                  "PARALLEL & DISTRIBUTED COMPUTING",
                  "PROFESSIONAL PRACTICES",
                  "MACHINE LEARNING"
                ],
                onChanged: (item) {
                  print(item);
                },
                selectedItem: "PROGRAMMING FUNDAMENTALS",
                showSearchBox: true,
                validate: (String? item) {
                  if (item == null)
                    return "Required field";
                  else if (item == "Brasil")
                    return "Invalid item";
                  else
                    return null;
                },
              ),
            ],
          )),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Teacher",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: GlobalVars.themecolor.withOpacity(1),
                    fontSize: 18),
              ),
              SizedBox(height: 7),
              CustomSearchableDropdown(
                backgroundColor: Colors.white,
                items: ["Dr. Hassan", "Dr. Naseer", "Dr. Mohsin", "Prof. Umer"],
                onChanged: (item) {
                  print(item);
                },
                selectedItem: "Dr. Hassan",
                showSearchBox: true,
                validate: (String? item) {
                  if (item == null)
                    return "Required field";
                  else
                    return null;
                },
              ),
            ],
          )),
      SizedBox(
        height: 15,
      ),
      Material(
          color: GlobalVars.themecolor,
          borderRadius: BorderRadius.circular(30),
          child: InkWell(
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(
                builder: (context) {
                  return Record();
                },
              ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          )),
    ]));
  }
}



// CustomSearchableDropdown(
//         backgroundColor: GlobalVars.themecolor.withOpacity(0.7),
//         items: ["aaaaa", "hassan", "azhar", "umair"],
//         onChanged: (item) {
//           print(item);
//         },
//         selectedItem: "Brasil",
//         showSearchBox: true,
//         validate: (String? item) {
//           if (item == null)
//             return "Required field";
//           else if (item == "Brasil")
//             return "Invalid item";
//           else
//             return null;
//         },
//       )