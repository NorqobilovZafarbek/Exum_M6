import 'package:flutter/material.dart';

import 'widgets/create_account_checked.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccount();
}

class _CreateAccount extends State<CreateAccount> {

  void closePage(){
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
              ),
              onPressed: closePage,
              icon: Image.asset("assets/images/Group.png"),
            ),
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Create your",
                        style: TextStyle(
                          color: Color(0xFF234F68),
                          fontFamily: "Lato",
                          fontSize: 25,
                        ),
                      ),
                      TextSpan(
                        text: " account",
                        style: TextStyle(
                          color: Color(0xFF252B5C),
                          fontFamily: "Lato",
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "quis nostrud exercitation ullamco laboris nisi ut",
                  style: TextStyle(
                    color: Color(0xFF53587A),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const CreateAccount_1(),
          ],
        ),
      ),
    );
  }
}
