import 'package:cow_profile_and_shed_management/presentation/ui/screen/shedDetails.dart';
import 'package:cow_profile_and_shed_management/presentation/ui/utility/image_base_url.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1, // 100% of the screen height
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageURL.registrationBG),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
              child: Column(
                children: <Widget>[
                  // Upper part of the screen

                  Container(
                    height: MediaQuery.of(context).size.height * 0.5, // 50% of the screen height

                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Image.asset(ImageURL.cowHead),
                          SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),


                  // Lower part of the screen with a background image
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5, // 50% of the screen height
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text("  Email",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 10,),
                                TextFormField(
                                  cursorColor: Colors.yellow,
                                  decoration: InputDecoration(
                                    filled: true, // This enables filling the background with a color
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffd8d7e9))),
                                    hintText: "youremail@gmail.com",
                                    hintStyle: TextStyle(color: Color(0xff868686)) ,
                                    disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffd8d7e9))),
                                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffd8d7e9))),
                                  ),

                                ),
                                SizedBox(height: 10,),
                                Text("  Password",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 10,),
                                TextFormField(
                                cursorColor: Colors.yellow,
                                obscureText: true,
                                decoration: InputDecoration(
                                  filled: true, // This enables filling the background with a color
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffd8d7e9))),
                                  hintText: "*********",
                                  hintStyle: TextStyle(color: Color(0xff868686)) ,
                                  disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffd8d7e9))),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffd8d7e9))),
                                ),

                              ),
                                SizedBox(height: 15,),
                                SizedBox(
                                  width: double.infinity,
                                  height:45,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff198319),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                    ),
                                    onPressed: () {
                                      Get.offAll(ShedDetails());
                                    },
                                    child: Text("LOGIN"),
                                  ),
                                )
                            ],
                          ),
                        )
                    ),
                  ),
                ],

              )
          ),
        ),
      ),
    );
  }
}
