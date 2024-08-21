import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isVisible = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(image: AssetImage("assets/Gemini_Generated_Image_e1x95qe1x95qe1x9.jpg"),
                  height: 200,
                ),
                const SizedBox(height: 20,),
                const Text(
                  "HELLO THERE",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20,),
                Text(
                  "Register below with your details!",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 35,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "Please enter the Email.";
                    }
                    else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passController,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "Please enter the Password.";
                    }
                    else {
                      return null;
                    }
                  },
                  obscureText: !isVisible,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      hintText: "password",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: !isVisible
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off_rounded),
                      )),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()){
                      UserCredential? userCredantial=  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passController.text );
                      createUserDocument(userCredantial);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Success")));
                      }
                    },
                    child: const Text("Register",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("I am a member!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: const Text("Login now",
                      style: TextStyle(
                          color: Colors.purpleAccent,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
 Future<void> createUserDocument(UserCredential? userCredential)async{
if(userCredential != null && userCredential.user != null){
  await FirebaseFirestore.instance.collection("users").doc(userCredential.user!.email).set({
    "email" : userCredential.user!.email
  });
}
 }
}
