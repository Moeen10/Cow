import 'package:cow_profile_and_shed_management/presentation/ui/screen/Splash_Screen/addMilk.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/screen/cowDetails.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/widgets/SizeDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CowProfile extends StatelessWidget {
  const CowProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E7E7),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cow Profile"),
      ),
      drawer: SizeDrawer(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0, bottom: 0.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         CircleAvatar(
                           backgroundColor: Colors.white,
                           radius: 40,
                           child: Image.asset("assets/images/C.png"),
                         ),
                          Column(children: [Text("Cattle Id No 103"), Text("Gender: male")]),
                          Column(children: [
                            ElevatedButton(onPressed: () {
                              Get.to(CowDetails());
                            }, child: Text("Details")),
                            SizedBox(height: 10,),
                            ElevatedButton(onPressed: () {
                              Get.to(AddMilk());
                            }, child: Text("   Milk  "))
                          ]),


                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 80,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
