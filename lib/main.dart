import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello by Belal Khleel"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyTextForm(
            label: Text(
              "Email",
            ),
            controller: emailController,
          ),
          MyTextForm(
            label: Text("password"),
            controller: passwordController,
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(onPressed: () {
            if(emailController.text == "tariq@gmail.com" && passwordController.text == "112233"){
              setState(() {
                isLoggedIn = true;
              });
            }
            else{
              setState(() {
                isLoggedIn = false;
              });
            }


          }, child: Text("Login")),
          SizedBox(
            height: 16,
          ),
          isLoggedIn ? Text("Welcome",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),) :SizedBox(),
        ],
      ),
    );
  }
}

class MyTextForm extends StatelessWidget {
  const MyTextForm({super.key, required this.label, required this.controller});

  final label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(border: OutlineInputBorder(), label: label),
      ),
    );
  }
}
