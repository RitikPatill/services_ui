import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
   TimeOfDay time=TimeOfDay.now();
   late TimeOfDay picked;
  String currentTime = "Time";

  // void initState() {
  //   super.initState();
  //   time = TimeOfDay.now();
  // }

  Future<Null> selectTime(BuildContext context) async {
    picked = (await showTimePicker(
      context: context,
      initialTime: time,
    ))!;
    setState(() {
      time=picked;
      print(time);
    });
    // if (picked != null ) {
    //   setState(() {
    //     time = picked;
    //   });
    // }
  }

  String dateTochange = "DD/MM/YYYY";

  void changedata() {
    setState(() {
      dateTochange = date.day.toString() +
          "/" +
          date.month.toString() +
          "/" +
          date.year.toString();
      selectTimerPicker(context);
    });
  }

  void changeTime() {
    setState(() {
      currentTime = time.hour.toString() + " : " + time.minute.toString();
      print(time.hour);
      selectTime(context);
    });




  }

  var valueChose;

  var listitem = ['Mumbai', 'Delhi', 'Pune'];
  DateTime date = DateTime.now();

  Future<Null> selectTimerPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1940),
        lastDate: DateTime(2050));
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
        print(date.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                child: Text(
                  "Select Services",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IconButton(
                        //Icons.favorite,
                        icon: new Icon(
                          FontAwesomeIcons.tshirt,
                          color: Colors.yellow,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  DropdownButton(
                    focusColor: Colors.white,
                    hint: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '         Washing Shirts',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // Text('      Washing Shirts',
                          //   style: TextStyle(
                          //     color:Colors.black,
                          //
                          //     fontWeight: FontWeight.w400,
                          //   ),
                          //
                          // ),
                        ],
                      ),
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:
                            Icon(Icons.arrow_drop_down, color: Colors.black),
                      ),
                    ),
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                    onChanged: (newValue) {
                      valueChose = newValue;
                    },
                    items: listitem.map((String dropDownStringItems) {
                      return DropdownMenuItem(
                        value: dropDownStringItems,
                        child: Text(dropDownStringItems),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IconButton(
                        //Icons.favorite,
                        icon: new Icon(
                          FontAwesomeIcons.tshirt,
                          color: Colors.yellow,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  DropdownButton(
                    focusColor: Colors.white,
                    hint: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '         Iron Dresses',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // Text('      Washing Shirts',
                          //   style: TextStyle(
                          //     color:Colors.black,
                          //
                          //     fontWeight: FontWeight.w400,
                          //   ),
                          //
                          // ),
                        ],
                      ),
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:
                            Icon(Icons.arrow_drop_down, color: Colors.black),
                      ),
                    ),
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                    onChanged: (newValue) {
                      valueChose = newValue;
                    },
                    items: listitem.map((String dropDownStringItems) {
                      return DropdownMenuItem(
                        value: dropDownStringItems,
                        child: Text(dropDownStringItems),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IconButton(
                        //Icons.favorite,
                        icon: new Icon(
                          FontAwesomeIcons.tshirt,
                          color: Colors.yellow,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  DropdownButton(
                    focusColor: Colors.white,
                    hint: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '         Remove Strains',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // Text('      Washing Shirts',
                          //   style: TextStyle(
                          //     color:Colors.black,
                          //
                          //     fontWeight: FontWeight.w400,
                          //   ),
                          //
                          // ),
                        ],
                      ),
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:
                            Icon(Icons.arrow_drop_down, color: Colors.black),
                      ),
                    ),
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                    onChanged: (newValue) {
                      valueChose = newValue;
                    },
                    items: listitem.map((String dropDownStringItems) {
                      return DropdownMenuItem(
                        value: dropDownStringItems,
                        child: Text(dropDownStringItems),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IconButton(
                        //Icons.favorite,
                        icon: new Icon(
                          FontAwesomeIcons.tshirt,
                          color: Colors.yellow,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  DropdownButton(
                    focusColor: Colors.white,
                    hint: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '         Loreum ipsom',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // Text('      Washing Shirts',
                          //   style: TextStyle(
                          //     color:Colors.black,
                          //
                          //     fontWeight: FontWeight.w400,
                          //   ),
                          //
                          // ),
                        ],
                      ),
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:
                            Icon(Icons.arrow_drop_down, color: Colors.black),
                      ),
                    ),
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                    onChanged: (newValue) {
                      valueChose = newValue;
                    },
                    items: listitem.map((String dropDownStringItems) {
                      return DropdownMenuItem(
                        value: dropDownStringItems,
                        child: Text(dropDownStringItems),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  "Select Date",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 310,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Text(
                        date.day.toString()+"/"+date.month.toString()+"/"+date.year.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: new Icon(Icons.calendar_today),
                        color: Colors.grey,
                        onPressed:
                            () {
                         selectTimerPicker(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  "Select Time",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 310,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Text(
                        time.hour.toString()+" : "+time.minute.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: new Icon(Icons.timer),
                        color: Colors.grey,
                        onPressed:
                            () {
                          //currentTime=time.hour.toString()+" : "+time.minute.toString();
                         selectTime(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: SizedBox(
                height: 50,
                width: 310,
                child: RaisedButton(
                  color: Colors.green,
                  onPressed: (){},
                  child: Text("ONLINE PAYMENT",style: TextStyle(
                  color: Colors.white,
                    fontSize: 24,
                  ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
