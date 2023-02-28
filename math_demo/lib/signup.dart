//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Login.dart';
import '../homepage.dart';

class SignUp extends StatelessWidget {
//final auth = FirebaseAuth.instance;
//final ValueChanged<User> onSuccess;
  const SignUp({Key? key}) : super(key: key);

  static const String title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'ThetaMetrics',
                style: TextStyle(
                    color: Color.fromARGB(255, 43, 149, 170),
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 43, 149, 170)),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: fnameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: lnameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: cpasswordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
              ),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text('Register'),
              onPressed: () {
                /*() async {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: "email@example.com",
                    password: passwordController.text,
                  )
                      .then((userCredential) {
                    print(
                        "User registered with ID ${nameController.text} and password ${passwordController.text}");
                  }).catchError((error) {
                    if (error.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (error.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  });*/

                /*print(fnameController.text);
                  print(lnameController.text);
                  print(nameController.text);
                  print(passwordController.text);
                  print(cpasswordController.text);*/
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home_page()),
                );
              },
            ),
          ),
          Row(
            children: <Widget>[
              const Text('Already have an account?'),
              TextButton(
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                  selectionColor: Color.fromARGB(222, 36, 47, 170),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
/*
  const SignInPage({
    required this.auth,
    required this.onSuccess,
    super.key,
  });
try{
  UserCredential userCredential = await auth.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
  User user = userCredential.user;
  print('User created: $user');
} on FirebaseAuthException catch (e) {
  print('Failed to create user: $e');
}*/
}
