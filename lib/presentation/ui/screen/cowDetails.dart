import 'package:cow_profile_and_shed_management/presentation/ui/widgets/SizeDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CowDetails extends StatefulWidget {
   CowDetails({Key? key}) : super(key: key);

  @override
  State<CowDetails> createState() => _CowDetailsState();
}

class _CowDetailsState extends State<CowDetails> {
  int selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cattle Number 111"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // Set the border radius here
                child: AspectRatio(
                  aspectRatio: 16 / 12, // Adjust the aspect ratio as needed
                  child: Image.asset("assets/images/c.jpg", fit: BoxFit.fill),
                ),
              ),

              SizedBox(height: 10,),

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


              selectedButtonIndex == 0 ?BasicInfo(): Container(),
              selectedButtonIndex == 1 ?Health(): Container(),
              selectedButtonIndex == 2 ?Reproduction(): Container(),


            ],
          ),
        ),
      ),
    );
  }
}



class BasicInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/cal.svg"),
          SizedBox(width: 20,),
          Text("Purchase Date"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/origin.svg"),          SizedBox(width: 20,),
          Text("Origin"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/cake.svg"),          SizedBox(width: 20,),
          Text("Age"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/weight.svg"),
          SizedBox(width: 20,),
          Text("Weight"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/milk.svg"),
          SizedBox(width: 20,),
          Text("Milk Yield"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/color.svg"),
          SizedBox(width: 20,),
          Text("Color"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/milk.svg"),
          SizedBox(width: 20,),
          Text("Milk Status"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/owner.svg"),          SizedBox(width: 20,),
          Text("Ownership"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/breeding.svg"),          SizedBox(width: 20,),
          Text("Breeding Rate"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/gender.svg"),          SizedBox(width: 20,),
          Text("Gender"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
      ],
    );
  }
}

class Health extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Row(children: [
            SvgPicture.asset("assets/images/cowDetails/helthStatus.svg"),
            SizedBox(width: 20,),
            Text("Health Status"),
            Spacer(),
            Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
          ]),
          SizedBox(height: 10,),
          Row(children: [
            SvgPicture.asset("assets/images/cowDetails/cal.svg"),
            SizedBox(width: 20,),
            Text("Vaccined"),
            Spacer(),
            Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
          ]),
          SizedBox(height: 10,),
          Row(children: [
            SvgPicture.asset("assets/images/cowDetails/disease.svg"),
            SizedBox(width: 20,),
            Text("Disease"),
            Spacer(),
            Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
          ]),
          SizedBox(height: 10,),
          Row(children: [
            SvgPicture.asset("assets/images/cowDetails/medicine.svg"),
            SizedBox(width: 20,),
            Text("Medicine"),
            Spacer(),
            Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
          ]),
          SizedBox(height: 10,),
          Row(children: [
            SvgPicture.asset("assets/images/cowDetails/Group 427319277.svg"),
            SizedBox(width: 20,),
            Text("Current Vaccine"),
            Spacer(),
            Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
          ]),
          SizedBox(height: 10,),
          Row(children: [
            SvgPicture.asset("assets/images/cowDetails/currentVaccineDose.svg"),
            SizedBox(width: 20,),
            Text("Current Vaccine Dose"),
            Spacer(),
            Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
          ]),
          SizedBox(height: 10,),
          Row(children: [
            SvgPicture.asset("assets/images/cowDetails/Group 427319277.svg"),
            SizedBox(width: 20,),
            Text("Next Vaccine Date"),
            Spacer(),
            Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
          ]),
        ],
      ),
    );
  }
}

class Reproduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/cowi.svg"),
          SizedBox(width: 20,),
          Text("Provable heat date"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/status.svg"),          SizedBox(width: 20,),
          Text("Heat Status"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/status.svg"),          SizedBox(width: 20,),
          Text("Health Status"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/spm.svg"),
          SizedBox(width: 20,),
          Text("Semen Push Status"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/spm.svg"),
          SizedBox(width: 20,),
          Text("Semen Push Date"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/cowi.svg"),
          SizedBox(width: 20,),
          Text("Pregnant Status"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/cowi.svg"),
          SizedBox(width: 20,),
          Text("Pregnant Date"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),
        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/cowi.svg"),          SizedBox(width: 20,),
          Text("Delivery Status"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
        SizedBox(height: 10,),

        Row(children: [
          SvgPicture.asset("assets/images/cowDetails/cowi.svg"),          SizedBox(width: 20,),
          Text("Delivery Date"),
          Spacer(),
          Expanded(child: Container(height: 20,child: Text("ASF",style: TextStyle(color: Colors.black)),)),
        ]),
      ],
    );
  }
}
