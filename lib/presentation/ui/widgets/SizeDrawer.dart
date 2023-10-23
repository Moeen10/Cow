import 'package:cow_profile_and_shed_management/presentation/ui/screen/AddInventory.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/screen/InventoryList/InventoryList.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/screen/Splash_Screen/addMilk.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/screen/addDevice.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/screen/CowProfile/cowProfile.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/screen/expense.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/screen/shedDetails.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/screen/addCow.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/screen/shedRegistration.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/screen/vaccine&medicine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class SizeDrawer extends StatelessWidget {
  const SizeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Center(
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/14/74/61/1000_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg"),
                    ),
                    accountName: Text("Moeen Uddin"),
                    accountEmail: Text("umoeen3@gmail.com"),

                  ),
                ),
                ListTile(
                  leading: Icon(Icons.add_home,color: Colors.green,),
                  title: Text("Shed Registration"),
                  onTap: () {
                    Get.to(ShedRegistration());
                  },
                ),
                ListTile(
                  leading: Icon(Icons.sensors,color: Colors.green,),
                  title: Text("Shed Details"),
                  onTap: () {
                    Get.to(ShedDetails());
                  },
                ),
                ListTile(
                  leading:  SvgPicture.asset(
                    "assets/images/addCow.svg",
                    height: 30,
                    width: 30,
                  ),
                  title: Text("Add Cow"),
                  onTap: () {
                    Get.to(AddCow());
                  },
                ),
                ListTile(
                  leading:  SvgPicture.asset(
                    "assets/images/deviceAdd.svg",
                    height: 28,
                    width: 28,
                  ),
                  title: Text("Add Device"),
                  onTap: () {
                    Get.to(AddDevice());
                  },
                ),
                ListTile(
                  leading:  SvgPicture.asset(
                    "assets/images/expense.svg",
                    height: 28,
                    width: 28,
                  ),
                  title: Text("Expense"),
                  onTap: () {
                    Get.to(Expense());
                  },
                ),
                ListTile(
                  leading:  SvgPicture.asset(
                    "assets/images/inventory.svg",
                    height: 28,
                    width: 28,
                  ),
                  title: Text("Add Inventory"),
                  onTap: () {
                    Get.to(AddInventory());
                  },
                ),


                ListTile(

                  leading: Image.asset("assets/images/cowMukh.png",height: 35,),
                  title: Text("Cow Profile"),
                  onTap: () {
                    Get.to(CowProfile());
                  },
                ),

                ListTile(
                  leading: Image.asset("assets/images/cowMukh.png",height: 35,),
                  title: Text("Inventory list"),
                  onTap: () {
                    Get.to(InventoryList());

                  },
                ),

                ListTile(
                  leading: Image.asset("assets/images/cowMukh.png",height: 35,),
                  title: Text("Vaccin & Medicine"),
                  onTap: () {
                    Get.to(VaccinAndMedicine());
                  },
                ),
              ],

            ),
          ),
        ],
      ),
    );


  }
}

