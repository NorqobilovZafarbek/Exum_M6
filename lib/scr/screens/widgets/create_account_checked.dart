


import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class CreateAccount_1 extends StatefulWidget {
  const CreateAccount_1({Key? key}) : super(key: key);

  @override
  State<CreateAccount_1> createState() => _CreateAccount_1();
}

class _CreateAccount_1 extends State<CreateAccount_1> {

  GlobalKey<FormState> fromKey = GlobalKey<FormState>();

  String? checkedName(String? value) {
    if(value != null && value.length >=3){
      return "invalid password";
    }
    return null;
  }

  String? checkedEmail(String? value) {
      if (value != null && !RegExp(r"^[a-zA-Z][a-zA-Z0-9]*@[a-zA-Z0-9]+\.[a-zA-Z]$")
              .hasMatch(value)) {
        return "Invalid email address!";
      }

      return null;
    }

  String? checkedPassword(String? value) {

    return null;
  }



  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Column(
        children: [
          CustomTextField(
            hintText: "Full name",
            validator: checkedName,
            imagePath: "assets/images/Profile.png",
          ),
          const SizedBox(height: 15),
          CustomTextField(
            hintText: "Email",
            validator: checkedEmail,
            imagePath: "assets/images/Email.png",
          ),
          const SizedBox(height: 15),
          CustomTextField(
            hintText: "Password",
            validator: checkedPassword,
            imagePath: "assets/images/Lock.png",
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5, right: 5, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Terms of service",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Show password",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40,),
          Center(
            child: FilledButton(
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: Size(278, 63),
                backgroundColor: Color(0xFF8BC83F),
              ),
              onPressed: (){},
              child: Text(
                "Register",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
