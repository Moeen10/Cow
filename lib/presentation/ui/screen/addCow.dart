import 'package:cow_profile_and_shed_management/presentation/ui/widgets/SizeDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_tags/flutter_tags.dart';
import 'package:chips_choice/chips_choice.dart';

class AddCow extends StatefulWidget {
  const AddCow({Key? key}) : super(key: key);

  @override
  State<AddCow> createState() => _AddCowState();
}

class _AddCowState extends State<AddCow> {
  int selectedButtonIndex = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdbe3e7),
      appBar: AppBar(
        centerTitle: true,
        title: Text("ADD"),
      ),
      drawer: SizeDrawer(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
               Container(
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          // border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15.0), // Set the radius here
                        ),
                         child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(

                                          onPressed: () {
                                            setState(() {
                                              selectedButtonIndex = 0;
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: selectedButtonIndex == 0
                                                ? Colors.green
                                                : Colors.grey, // Change color based on index
                                          ),
                                          child: Text("Basic Info"),
                                        ),
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedButtonIndex = 1;
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: selectedButtonIndex == 1
                                                ? Colors.green
                                                : Colors.grey, // Change color based on index
                                          ),
                                          child: Text("Health"),
                                        ),
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedButtonIndex = 2;
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: selectedButtonIndex == 2
                                                ? Colors.green
                                                : Colors.grey, // Change color based on index
                                          ),
                                          child: Text("Reproduction"),
                                        ),
                                      ),
                                    ],
                                  ),
                      ),

              selectedButtonIndex == 0 ?BasicInfoForm(): Container(),
               selectedButtonIndex == 1 ?HealthForm(): Container(),
              selectedButtonIndex == 2 ?ReproductionForm(): Container(),
            ],
          ),
        ),
      ),
    );
  }
}



















class BasicInfoForm extends StatelessWidget {
  const BasicInfoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("Upload Image ear kaj baki",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w500),),

          //Origin

          Text("Origin",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Friesian', // This sets the hint text
            ),
          ),
          SizedBox(height: 10,),


          //Gender

          Text("Gender",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Female', // This sets the hint text
            ),
          ),
          SizedBox(height: 10,),

          //Cattle ID No 201

          Text("Cattle ID No 201",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'C20', // This sets the hint text
            ),
          ),
          SizedBox(height: 10,),

          Text("Age",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              hintText: '10', // This sets the hint text
            ),
          ),
          SizedBox(height: 10,),
          //Date of bitrh
          SizedBox(height: 10,),
          Text("Date of Birth",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          Container(

            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border:Border.all(color: Color(0xff54A800),width: 2),
                color: Colors.white
            ),

            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [

                  SvgPicture.asset(
                    "assets/images/calender.svg", // Replace with your SVG asset path
                    width: 24, // Adjust the width as needed
                    height: 24, // Adjust the height as needed
                  ),
                  Expanded(
                    child: TextField(
                      decoration:
                      InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),

                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),

          //Color

          Text("Color",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Black 70% White 30%', // This sets the hint text
            ),
          ),
          SizedBox(height: 10,),

          //Breeding Rate

          Text("Breeding Rate",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              hintText: '2', // This sets the hint text
            ),
          ),
          SizedBox(height: 10,),

          //Weight

          Text("Weight",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              hintText: '660 kg', // This sets the hint text
            ),
          ),
          SizedBox(height: 10,),


          //Milk Yield

          Text("Milk Yield",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              hintText: '8010 Liter', // This sets the hint text
            ),
          ),
          SizedBox(height: 10,),


          //Upload picture



          //Submit Button
          SizedBox(
              width: double.infinity,
              height: 50,
              child:
              ElevatedButton(onPressed: (){},
                  child: Text("SUBMIT")
              )
          ),



        ],
      ),
    );
  }
}


class HealthForm extends StatefulWidget {
  HealthForm({Key? key}) : super(key: key);

  @override
  State<HealthForm> createState() => _HealthFormState();
}

class _HealthFormState extends State<HealthForm> {


  TextEditingController textFieldController = TextEditingController();
  List<String> tags = [];
  List<String> tags2 = [];
  List<String> tags3 = [];
  List<String> options = [
    'News', 'Entertainment', 'Politics',
    'Automotive', 'Sports', 'Education',
    'Fashion', 'Travel', 'Food', 'Tech',
    'Science',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Text("Current Vaccine Dose",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
        TextField(),
        SizedBox(height: 15,),


        Text("Next Vaccine Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
        Container(

          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border:Border.all(color: Color(0xff54A800),width: 2),
              color: Colors.white
          ),

          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [

                SvgPicture.asset(
                  "assets/images/calender.svg", // Replace with your SVG asset path
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
                Expanded(
                  child: TextField(
                    decoration:
                    InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),

                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),


        Text("Disease",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
        Container(
          width: double.infinity,
          height: 60,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green,width: 1),
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 8.0, // Adjust the spacing between chips as needed
              runSpacing: 4.0, // Adjust the run spacing as needed
              children: tags.map((tag) {
                return Chip(
                  backgroundColor: Color(0xffB8F4FF),
                  label: Text(tag,style: TextStyle(color: Color(0xff777777)),),
                  onDeleted: () {
                    setState(() {
                      tags.remove(tag);
                    });
                  },
                );
              }).toList(),
            ),
          ),
        ),
        ChipsChoice<String>.multiple(
          value: tags,
          onChanged: (val) => setState(() {
            tags = val;
          }
          ),
          choiceItems: C2Choice.listFrom<String, String>(
            source: options,
            value: (i, v) => v,
            label: (i, v) => v,
          ),
        ),




        Text("Medicine",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
        Container(
          width: double.infinity,
          height: 60,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green,width: 1),
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 8.0, // Adjust the spacing between chips as needed
              runSpacing: 4.0, // Adjust the run spacing as needed
              children: tags2.map((tag) {
                return Chip(
                  backgroundColor: Color(0xffB8F4FF),
                  label: Text(tag,style: TextStyle(color: Color(0xff777777)),),
                  onDeleted: () {
                    setState(() {
                      tags2.remove(tag);
                    });
                  },
                );
              }).toList(),
            ),
          ),
        ),
        ChipsChoice<String>.multiple(
          value: tags2,
          onChanged: (val) => setState(() {
            tags2 = val;
          }
          ),
          choiceItems: C2Choice.listFrom<String, String>(
            source: options,
            value: (i, v) => v,
            label: (i, v) => v,
          ),
        ),




        Text("Current Vaccine",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
        Container(
          width: double.infinity,
          height: 60,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green,width: 1),
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 8.0, // Adjust the spacing between chips as needed
              runSpacing: 4.0, // Adjust the run spacing as needed
              children: tags3.map((tag) {
                return Chip(
                  backgroundColor: Color(0xffB8F4FF),
                  label: Text(tag,style: TextStyle(color: Color(0xff777777)),),
                  onDeleted: () {
                    setState(() {
                      tags3.remove(tag);
                    });
                  },
                );
              }).toList(),
            ),
          ),
        ),
        ChipsChoice<String>.multiple(
          value: tags3,
          onChanged: (val) => setState(() {
            tags3 = val;
          }
          ),
          choiceItems: C2Choice.listFrom<String, String>(
            source: options,
            value: (i, v) => v,
            label: (i, v) => v,
          ),
        ),


        Text("Current Vaccine Dose",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
        TextField(),
        SizedBox(height: 10,),
        Text("Next Vaccine Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),

        Container(

          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border:Border.all(color: Color(0xff54A800),width: 2),
              color: Colors.white
          ),

          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [

                SvgPicture.asset(
                  "assets/images/calender.svg", // Replace with your SVG asset path
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
                Expanded(
                  child: TextField(
                    decoration:
                    InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),

                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        SizedBox(
            width: double.infinity,
            height: 50,
            child:
            ElevatedButton(onPressed: (){},
                child: Text("SUBMIT")
            )
        ),

      ],
    );
  }
}





class ReproductionForm extends StatefulWidget {
  const ReproductionForm({Key? key}) : super(key: key);

  @override
  State<ReproductionForm> createState() => _ReproductionFormState();
}

class _ReproductionFormState extends State<ReproductionForm> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),

        Text("Provable Heat Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        Container(

          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border:Border.all(color: Color(0xff54A800),width: 2),
              color: Colors.white
          ),

          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [

                SvgPicture.asset(
                  "assets/images/calender.svg", // Replace with your SVG asset path
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
                Expanded(
                  child: TextField(
                    decoration:
                    InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),

                    ),

                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 10,),

        Text("Heat Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        TextField(),

        SizedBox(height: 10,),

        Text("Actual Heat Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        Container(

          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border:Border.all(color: Color(0xff54A800),width: 2),
              color: Colors.white
          ),

          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [

                SvgPicture.asset(
                  "assets/images/calender.svg", // Replace with your SVG asset path
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
                Expanded(
                  child: TextField(
                    decoration:
                    InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),

                    ),

                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 10,),

        Text("Semen Push Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        TextField(),

        SizedBox(height: 10,),

        Text("Semen Push Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        Container(

          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border:Border.all(color: Color(0xff54A800),width: 2),
              color: Colors.white
          ),

          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [

                SvgPicture.asset(
                  "assets/images/calender.svg", // Replace with your SVG asset path
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
                Expanded(
                  child: TextField(
                    decoration:
                    InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),

                    ),

                  ),
                ),
              ],
            ),
          ),
        ),


        SizedBox(height: 10,),

        Text("Pregnant Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        TextField(),

        SizedBox(height: 10,),

        Text("Pregnant Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        Container(

          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border:Border.all(color: Color(0xff54A800),width: 2),
              color: Colors.white
          ),

          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [

                SvgPicture.asset(
                  "assets/images/calender.svg", // Replace with your SVG asset path
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
                Expanded(
                  child: TextField(
                    decoration:
                    InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),

                    ),

                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 10,),

        Text("Delivery Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        TextField(),

        SizedBox(height: 10,),

        Text("Delivery Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        Container(

          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border:Border.all(color: Color(0xff54A800),width: 2),
              color: Colors.white
          ),

          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [

                SvgPicture.asset(
                  "assets/images/calender.svg", // Replace with your SVG asset path
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
                Expanded(
                  child: TextField(
                    decoration:
                    InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),

                    ),

                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 15,),

        SizedBox(
            width: double.infinity,
            height: 50,
            child:
            ElevatedButton(onPressed: (){},
                child: Text("SUBMIT")
            )
        ),


      ],
    );
  }
}
