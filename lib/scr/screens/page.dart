//
//
//
//
// import 'package:flutter/material.dart';
//
// import 'widgets/custom_text_field.dart';
//
// class CreateAccountPage extends StatefulWidget {
//   const CreateAccountPage({Key? key}) : super(key: key);
//
//   @override
//   State<CreateAccountPage> createState() => _CreateAccountPageState();
// }
//
// class _CreateAccountPageState extends State<CreateAccountPage> {
//
//
//
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   String password = "";
//
//   String? validateName(String? value) {
//     if (value != null && value.length < 2) {
//       return "Invalid name";
//     }
//
//     return null;
//   }
//
//   String? validateEmail(String? value) {
//     if (value != null &&
//         !RegExp(r"^[a-zA-Z][a-zA-Z0-9]*@[a-zA-Z0-9]+\.[a-zA-Z]{2,6}$")
//             .hasMatch(value)) {
//       return "Invalid email address!";
//     }
//
//     return null;
//   }
//
//   String? validatePassword(String? value) {
//     if (value != null && !RegExp(r".{8,}").hasMatch(value)) {
//       return "Password is too short, it must be at least 8 characters";
//     }
//
//     if (value != null && value.contains(" ")) {
//       return "Password shouldn't have space";
//     }
//
//     if (value != null && !RegExp(r"\d").hasMatch(value)) {
//       return "Password must have at least one number";
//     }
//
//     if (value != null && !RegExp(r"[a-z]").hasMatch(value)) {
//       return "Password must have at least one letter";
//     }
//
//     if (value != null && !RegExp(r"[A-Z]").hasMatch(value)) {
//       return "Password must have at least one Capital letter";
//     }
//
//     password = value ?? "";
//
//     return null;
//   }
//
//   String? validateReEnter(String? value) {
//     if (value != null && password != value) {
//       return "Password doesn't match";
//     }
//
//     return null;
//   }
//
//   void openLoginPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => const LoginPage(),
//       ),
//     );
//   }
//
//   void openHomePage() {
//     if (_formKey.currentState!.validate()) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const HomePage(),
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: SafeArea(
//         child: Form(
//           key: _formKey,
//           child: Container(
//             margin: const EdgeInsets.all(25),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const Text(
//                   "Create an account",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 24,
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 const Text(
//                   "Start your book journey with us",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//                 CustomTextField(
//                   hintText: "Enter full name",
//                   imagePath: "assets/images/icon_1.png",
//                   validator: validateName,
//                 ),
//                 const SizedBox(height: 30),
//                 CustomTextField(
//                   hintText: "Enter full email address",
//                   imagePath: "assets/images/icon_2.png",
//                   validator: validateEmail,
//                 ),
//                 const SizedBox(height: 30),
//                 CustomTextField(
//                   hintText: "Enter password",
//                   imagePath: "assets/images/icon_3.png",
//                   isObscure: true,
//                   validator: validatePassword,
//                   // onChange: (value) {
//                   //   if(_formKey.currentState != null) {
//                   //     _formKey.currentState!.validate();
//                   //   }
//                   // },
//                 ),
//                 const SizedBox(height: 30),
//                 CustomTextField(
//                   hintText: "Re-enter password",
//                   imagePath: "assets/images/icon_3.png",
//                   isObscure: true,
//                   inputAction: TextInputAction.done,
//                   validator: validateReEnter,
//                 ),
//                 const SizedBox(height: 40),
//                 CustomButton(
//                   text: "Create account",
//                   onTap: openHomePage,
//                 ),
//                 const SizedBox(height: 70),
//                 Center(
//                   child: RichText(
//                     text: TextSpan(
//                       style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.black,
//                       ),
//                       children: [
//                         const TextSpan(text: "Already have an account? "),
//                         TextSpan(
//                           text: "Log in",
//                           style: const TextStyle(
//                             color: Color.fromARGB(255, 61, 78, 237),
//                             decoration: TextDecoration.underline,
//                           ),
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = openLoginPage,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
