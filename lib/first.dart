import 'package:flutter/material.dart';

class first_page extends StatefulWidget {
  const first_page({Key? key}) : super(key: key);

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  String gender="male";
  TextEditingController h1=TextEditingController();
  TextEditingController h2=TextEditingController();
  TextEditingController h3=TextEditingController();
  double hg=0;
  double wg=0;
  double bmi=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI  CALCULATOR",style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: TextField(controller: h1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'height',
                      hintText: '___________',
                    ),),
                ),
              ),


              Expanded(child: TextField(controller: h2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'weight',
                  hintText: '___________',
                ),)),


            ],
          ),
          Row(
            children: [
              Expanded(child: Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                child: TextField(controller: h3,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Age',
                    hintText: '___________',
                  ),),
              )),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                String a=h1.text;
                String b=h2.text;
                String c=h3.text;
                print(a);
                print(b);
                print(c);

                double  n1=double.parse(a);
                double   n2=double.parse(b);
                double   n3=double.parse(c);

                double meter = n1/3.28;
                print(meter);
                bmi=n2/(meter * meter);
                if (bmi < 18.5) {
                  print("Under Weight") ;
                } else if (bmi >= 18.5 && bmi< 24.9) {
                  print("Healthy");
                } else if (bmi>= 24.9 && bmi < 30) {
                  print("NORMAL");
                } else if (bmi>= 30) {
                  print("OVER WEIGHT");
                }
                print(bmi);


              }, child: Text("submit"))
            ],
          )

        ],
      ),
    );
  }
}
