import 'package:flutter/material.dart';

import '../home_page.dart';
import 'custom_text_field.dart';

class Chekkin extends StatefulWidget {
  const Chekkin({Key? key}) : super(key: key);

  @override
  State<Chekkin> createState() => _Chekkin();
}

class _Chekkin extends State<Chekkin> {
  String email = "exam@modul6.com";
  String parol = "Modul6exam";
  String result = "";
  GlobalKey<FormState> fromKey = GlobalKey<FormState>();


  void openHomePage() {
    if (fromKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
  }

  String? validatorEmail(String? value){
    if(value != null && value.length != 15){
      for(int i = 0; i<email.length; i++){
        int index = value.indexOf(email[i]);
        if(index == -1){
          return "${email[i]} yetishmayabdi";
        }
      }
    }
    return null;
  }

  String? validatorPassword(String? value){
    if(value != null && value.length != 10){
      for(int i = 0; i<parol.length; i++){
        int index = value.indexOf(parol[i]);
        if(index == -1){
          return "${parol[i]} yetishmayabdi";
        }
      }
    }
    return null;
  }

  void isChecked(){

  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Column(
        children: [
          const SizedBox(height: 35,),
          CustomTextField(
            hintText: "Email",
            imagePath: "assets/images/Email.png",
            validator: validatorEmail,
          ),
          const SizedBox(height: 15),
          CustomTextField(
            hintText: "Password",
            imagePath: "assets/images/Lock.png",
            validator: validatorPassword,
            res: true,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5, right: 5, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Forgot password?", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),),
                Text("Show password", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),),
              ],
            ),
          ),
          SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .05
          ),
          Center(
            child: FilledButton(
              onPressed: openHomePage,
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: const Size(278, 63),
                backgroundColor: const Color(0xFF8BC83F),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
